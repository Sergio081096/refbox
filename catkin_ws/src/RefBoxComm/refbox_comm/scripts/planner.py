#!/usr/bin/env python3
import rospy
import os
import re
import rospkg
from std_msgs.msg import String
from experta import *

class CLIPSParser:
    """Analizador de archivos .clp de CLIPS"""
    
    @staticmethod
    def parse_fact(fact_str):
        """Convierte una cadena de hecho en un diccionario"""
        if '(' in fact_str:
            name, args = fact_str.split('(', 1)
            args = args.rstrip(')').strip()
            # Manejar argumentos con comillas y sin ellas
            args_list = re.split(r'\s+|(?<=")\s+(?=")', args)
            args_list = [arg.strip('"') for arg in args_list if arg.strip()]
            return {'name': name.strip(), 'args': args_list}
        return {'name': fact_str.strip(), 'args': []}
    
    @classmethod
    def load_rules(cls, filename):
        """Carga reglas desde un archivo .clp"""
        if not os.path.exists(filename):
            rospy.logerr(f"Archivo no encontrado: {filename}")
            return []
        
        rules = []
        with open(filename, 'r') as f:
            content = f.read()
            
            # Eliminar comentarios
            content = re.sub(r';.*', '', content)
            
            # Buscar bloques de reglas
            rule_blocks = re.findall(r'\(defrule\s+(.*?)\)', content, re.DOTALL)
            print(rule_blocks)
            for block in rule_blocks:
                print(block)
                try:
                    # Extraer nombre y contenido de la regla
                    name, rest = block.split(None, 1)
                    conditions, actions = rest.split('=>', 1)
                    print(name)
                    # Procesar condiciones
                    cond_list = []
                    for cond in re.findall(r'\(.*?\)', conditions):
                        cond_list.append(cls.parse_fact(cond.strip()))
                    
                    # Procesar acciones
                    act_list = []
                    for act in re.findall(r'\(.*?\)', actions):
                        act_list.append(cls.parse_fact(act.strip()))
                    
                    rules.append({
                        'name': name.strip(),
                        'conditions': cond_list,
                        'actions': act_list
                    })
                    
                except Exception as e:
                    rospy.logwarn(f"Error procesando regla: {str(e)}")
        
        return rules

class RobotPlanner(KnowledgeEngine):
    """Motor de planificación basado en reglas"""
    
    def __init__(self, rule_files):
        super().__init__()
        self.plan = []
        self.rule_files = rule_files
        self.declared_facts = set()
        self.rule_counter = 0
        self.load_rules()
    
    def load_rules(self):
        """Carga reglas desde archivos CLIPS"""
        for file in self.rule_files:
            rospy.loginfo(f"Cargando reglas desde: {file}")
            rules = CLIPSParser.load_rules(file)
            
            for rule in rules:
                self._create_rule(rule)
    
    def _create_rule(self, rule_data):
        """Crea una regla dinámica en Experta"""
        self.rule_counter += 1
        rule_name = f"rule_{self.rule_counter}_{rule_data['name']}"
        
        # Crear condiciones
        conditions = []
        for cond in rule_data['conditions']:
            fact_args = {f'arg{i}': value for i, value in enumerate(cond['args'])}
            conditions.append(Fact(name=cond['name'], **fact_args))
        print(conditions)
        # Crear acciones
        def rule_actions(**kwargs):
            for action in rule_data['actions']:
                # Sustituir variables en los argumentos
                resolved_args = []
                for arg in action['args']:
                    if arg.startswith('?'):
                        var_name = arg[1:]
                        resolved_args.append(kwargs.get(var_name, arg))
                    else:
                        resolved_args.append(arg)
                
                # Crear acción
                action_str = f"{action['name']}({', '.join(resolved_args)})"
                
                # Añadir al plan si no está ya
                if action_str not in self.plan:
                    self.plan.append(action_str)
                    rospy.loginfo(f"Regla '{rule_data['name']}': Acción planificada - {action_str}")
                
                # Declarar como nuevo hecho
                self.declare(Fact(name=action['name'], args=resolved_args))
        
        # Crear decorador de regla
        rule_decorator = Rule(*conditions, salience=10)(rule_actions)
        setattr(self, rule_name, rule_decorator)
    
    def add_fact(self, fact_str):
        """Añade un hecho desde una cadena"""
        parsed = CLIPSParser.parse_fact(fact_str)
        fact_id = f"{parsed['name']}{tuple(parsed['args'])}"
        
        if fact_id not in self.declared_facts:
            self.declare(Fact(name=parsed['name'], args=parsed['args']))
            self.declared_facts.add(fact_id)
            rospy.loginfo(f"Hecho añadido: {fact_str}")
    
    def clear_plan(self):
        """Limpia el plan actual"""
        self.plan = []
        rospy.loginfo("Plan reiniciado")

def load_dat_file(dat_path):
    """Carga archivos .clp desde un archivo .dat"""
    if not os.path.exists(dat_path):
        rospy.logerr(f"Archivo .dat no encontrado: {dat_path}")
        return []
    
    try:
        with open(dat_path, 'r') as f:
            content = f.read()
            # Extraer nombres de archivos .clp
            clp_files = re.findall(r'([\w\-/]+\.clp)', content)
            return [f.strip() for f in clp_files if f.strip()]
    except Exception as e:
        rospy.logerr(f"Error leyendo archivo .dat: {str(e)}")
        return []

def ros_callback(msg, planner):
    """Callback para mensajes ROS"""
    try:
        rospy.loginfo(f"Mensaje recibido: {msg.data}")
        
        # Comandos especiales
        if msg.data == "CLEAR_PLAN":
            planner.clear_plan()
            return
        elif msg.data == "RESET_FACTS":
            planner.reset()
            rospy.loginfo("Base de hechos reiniciada")
            return
            
        planner.add_fact(msg.data)
        if "orders" in msg.data:
            planner.plan = true
    except Exception as e:
        rospy.logerr(f"Error procesando mensaje: {str(e)}")

    # En el código Python
    rospy.loginfo(f"Hechos actuales: {planner.facts}")

def main():
    rospy.init_node('rule_based_planner', anonymous=True)
    rospack = rospkg.RosPack()
    
    # Obtener parámetros
    package_name = rospy.get_param('~package_name', 'tu_paquete_ros')
    dat_file = rospy.get_param('~dat_file', 'config/rules.dat')
    
    # Resolver ruta completa del archivo .dat
    try:
        package_path = rospack.get_path(package_name)
        dat_path = os.path.join(package_path, dat_file)
        rospy.loginfo(f"Buscando archivo .dat en: {dat_path}")
    except rospkg.common.ResourceNotFound:
        rospy.logerr(f"No se encontró el paquete: {package_name}")
        return
    
    # Cargar archivos .clp desde el .dat
    clp_files = load_dat_file(dat_path)
    if not clp_files:
        rospy.logerr("No se encontraron archivos .clp para cargar")
        return
    
    # Resolver rutas completas de los archivos .clp
    base_dir = os.path.dirname(dat_path)
    clp_files = [os.path.join(base_dir, f) for f in clp_files]
    
    rospy.loginfo(f"Archivos de reglas a cargar: {clp_files}")
    
    # Inicializar motor de planificación
    planner = RobotPlanner(clp_files)
    planner.reset()
    
    # Suscriptor ROS
    rospy.Subscriber("/refbox_msgs", String, ros_callback, callback_args=planner)
    
    # Publicador para acciones planificadas
    action_pub = rospy.Publisher("/planned_actions", String, queue_size=10)
    
    rate = rospy.Rate(1)  # 1 Hz
    rospy.loginfo("Sistema de planificación basado en reglas iniciado")
    
    while not rospy.is_shutdown():
        # Ejecutar el motor de reglas
        planner.run()
        
        # Publicar plan si hay acciones
        if planner.plan:
            plan_str = " | ".join(planner.plan)
            action_pub.publish(plan_str)
            rospy.loginfo(f"Plan actualizado: {plan_str}")
        
        rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        rospy.loginfo("Nodo terminado")