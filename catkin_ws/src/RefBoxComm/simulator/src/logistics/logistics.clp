
;************************************************
;*                                              *
;*     logistics.clp		                *
;*                                              *
;*                      J.Savage, UNAM          *
;*                                              *
;*                      4/6/2024                *
;*                                              *
;************************************************



(defglobal ?*id-mvn-pln* = 0)


; It sends a message that clips is alive
(defrule clips-alive
	  (declare (salience 1000))
	  (ros-node ?node)
        =>
          (rospub ?node "Clips alive")
)


(defrule clips-alive
        (declare (salience -900))
        ?f <- (alive clips)
        (ros-node ?node)
        =>
        (retract ?f)
        (printout ROS "clips alive 0" crlf)
        (rospub ?node "clips alive 0")
)


;it sends the command to the destination 
(defrule send-command-node
           ?fact1 <- (send-network ?destination ?arguments ?id)
        =>
          (retract ?fact1)
          (bind ?status (rospub ?destination ?arguments))
          (printout t "published to " ?destination ": " ?arguments crlf)
)


;it transforms the robot command
(defrule transform-send-robot
        ?fact1 <- (send-robot ?message)
	(ros-node ?node)
        =>
        (retract ?fact1)
        (assert (send-network ?node ?message ?*id-mvn-pln*))
        (bind ?*id-mvn-pln* (+ ?*id-mvn-pln* 1))
)


(defrule ring
	?ring <- ( rings { ring_color: ?color raw_material: ?material })
	 (ros-node ?node)
	=>
	(retract ?ring)
	(assert (ring (color ?color) (raw_material ?material)) )
	(printout t crlf "Ring color " ?color " material " ?material crlf)
	(bind ?string (str-cat "Ring color " ?color " material " ?material))
	(rospub ?node ?string)
)


(defrule machine
	 ?machine <- (machines { name: ?name type: ?type state: ?state team_color: ?team 5: ?num1 6: ?num2 })
	 (ros-node ?node)
	=>
	(retract ?machine)
	(bind ?name (sym-cat ?name))
	(bind ?type (sym-cat ?type))
	(bind ?state (sym-cat ?state))
	(assert (machine (name ?name) (type ?type) (state ?state) (team_color ?team)))
	(printout t crlf "machine name " ?name " type " ?type " state " ?state " team_color " ?team  " s " ?num1 " 6 " ?num2 crlf)
	(bind ?string (str-cat "machine " ))
	(rospub ?node ?string)
)

(defrule machine-transform
         ?f1 <- (machines { name: ?name type: ?type state: ?state team_color: ?team zone: ?zone rotation: ?rotation 5: ?num1 6: ?num2 })
	=>
	(retract ?f1)
	(bind ?name (sym-cat ?name))
        (bind ?type (sym-cat ?type))
        (bind ?state (sym-cat ?state))
	(assert (machines name ?name type ?type state ?state team_color ?team zone ?zone rotation ?rotation 5 ?num1 6 ?num2))
) 

(defrule machine-complete
	 ?f1 <- (machines name ?name type ?type state ?state team_color ?team zone ?zone rotation ?rotation 5 ?num1 6 ?num2 )
	 ?machine <- (machine (name ?name) (type ?type) (state ?state) (team_color ?team))
	 (ros-node ?node)
	=>
	(retract ?f1)
	(modify ?machine (zone ?zone) (rotation ?rotation))
	(printout t crlf "machine name " ?name " type " ?type " state " ?state " team_color " ?team " zone " ?zone " rotation " ?rotation " s " ?num1 " 6 " ?num2 crlf)
	(bind ?string (str-cat "machine complete" ))
	(rospub ?node ?string)
)


(defrule machine-ring-type
         ?f1 <- (machines { name: ?name type: ?type state: ?state team_color: ?team ring_colors: ?ring1 ring_colors: ?ring2 5: ?num1 6: ?num2  })
         (ros-node ?node)
        =>
        (retract ?f1)
	(bind ?name (sym-cat ?name))
        (bind ?type (sym-cat ?type))
        (bind ?state (sym-cat ?state))
	(assert (machine (name ?name) (type ?type) (state ?state) (team_color ?team) (ring_colors ?ring1 ?ring2)))
        (printout t crlf "machine name " ?name " type " ?type " state " ?state " team_color " ?team " rings " ?ring1 " " ?ring2 " s " ?num1 " 6 " ?num2 crlf)
        (bind ?string (str-cat "ring machine" ))
        (rospub ?node ?string)
)


(defrule orders-C0
	 ?f1 <- (orders { id: ?id complexity: C0 base_color: ?base_color cap_color: ?cape_color quantity_requested: ?quantity_requested
			 quantity_delivered_cyan: ?quantity_delivered_cyan quantity_delivered_magenta: ?quantity_delivered_magenta delivery_period_begin: ?delivery_period_begin
			 delivery_period_end: ?delivery_period_end delivery_gate: ?delivery_gate competitive: ?competitive })
         (ros-node ?node)
        =>
        (retract ?f1)
	(assert (order (id ?id) (complexity C0) (base_color ?base_color) (cap_color ?cape_color) (quantity_requested ?quantity_requested)
		(quantity_delivered_cyan ?quantity_delivered_cyan) (quantity_delivered_magenta ?quantity_delivered_magenta) (delivery_period_begin ?delivery_period_begin)
		(delivery_period_end ?delivery_period_end) (delivery_gate ?delivery_gate) (competitive ?competitive)))
        (printout t crlf "order id " ?id " complexity  C0" crlf)
        (bind ?string (str-cat "order C0" ))
        (rospub ?node ?string)
)

(defrule orders-C1
         ?f1 <- (orders { id: ?id complexity: C1 base_color: ?base_color ring_colors: ?ring_colors cap_color: ?cape_color quantity_requested: ?quantity_requested
                         quantity_delivered_cyan: ?quantity_delivered_cyan quantity_delivered_magenta: ?quantity_delivered_magenta delivery_period_begin: ?delivery_period_begin 
                         delivery_period_end: ?delivery_period_end delivery_gate: ?delivery_gate competitive: ?competitive })
         (ros-node ?node)
        =>
        (retract ?f1)
        (assert (order (id ?id) (complexity C1) (base_color ?base_color) (ring_colors ?ring_colors) (cap_color ?cape_color) (quantity_requested ?quantity_requested)
                (quantity_delivered_cyan ?quantity_delivered_cyan) (quantity_delivered_magenta ?quantity_delivered_magenta) (delivery_period_begin ?delivery_period_begin)
                (delivery_period_end ?delivery_period_end) (delivery_gate ?delivery_gate) (competitive ?competitive)))
        (printout t crlf "order id " ?id " complexity  C1" crlf)
        (bind ?string (str-cat "order C1" ))
        (rospub ?node ?string)
)


(defrule orders-C2
         ?f1 <- (orders { id: ?id complexity: C2 base_color: ?base_color ring_colors: ?ring_colors_1 ring_colors: ?ring_colors_2 cap_color: ?cape_color quantity_requested: ?quantity_requested
                         quantity_delivered_cyan: ?quantity_delivered_cyan quantity_delivered_magenta: ?quantity_delivered_magenta delivery_period_begin: ?delivery_period_begin 
                         delivery_period_end: ?delivery_period_end delivery_gate: ?delivery_gate competitive: ?competitive })
         (ros-node ?node)
        =>
        (retract ?f1)
        (assert (order (id ?id) (complexity C2) (base_color ?base_color) (ring_colors ?ring_colors_1 ?ring_colors_2) (cap_color ?cape_color) (quantity_requested ?quantity_requested)
                (quantity_delivered_cyan ?quantity_delivered_cyan) (quantity_delivered_magenta ?quantity_delivered_magenta) (delivery_period_begin ?delivery_period_begin)
                (delivery_period_end ?delivery_period_end) (delivery_gate ?delivery_gate) (competitive ?competitive)))
        (printout t crlf "order id " ?id " complexity  C1" crlf)
        (bind ?string (str-cat "order C2" ))
        (rospub ?node ?string)
)


(defrule team
        ?f2 <-  ( Robot (name ?name)(team ?color_robot ))
        ?f1 <- (team ?color&:(neq ?color ?color_robot))
        =>
        (modify ?f2 (team ?color))
)



(defrule delete-team
        (declare (salience -200))
        ?f1 <- (team ?color)
        =>
        (retract ?f1)
)
