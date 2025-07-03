;************************************************
;*                                              *
;*     planing.clp                              *
;*                                              *
;*                      J.Savage, UNAM          *
;*                                              *
;*                      11/6/2024               *
;*                                              *
;************************************************

; global variables
(defglobal ?*plan_number* = 0)
(defglobal ?*plan_number_new* = 0)


; planing rules
(defrule plan-order-C0
	?order <- (order (id ?id) (complexity C0) (base_color ?base_color) (cap_color ?cap_color) (quantity_requested ?num) (delivery_gate ?gate) )
	(machine (name ?name_bs) (type BS) (state ?state_bs) (team_color ?team_color) (zone ?zone_bs) (rotation ?rotation_bs))
	(machine (name ?name_cs) (type CS) (state ?state_cs) (team_color ?team_color) (zone ?zone_cs) (rotation ?rotation_cs))
	(machine (name ?name_ms) (type DS) (state ?state_ds) (team_color ?team_color) (zone ?zone_ds) (rotation ?rotation_ds))
	?Robot <- (Robot (name ?robot)(team ?team_color)(status idle))
        =>
	(retract ?order)
	(bind ?*plan_number* (+ 1 ?*plan_number*))
        (assert (plan (name C0)(id ?*plan_number*) (number 1 )(actions ?robot goto CS ?zone_cs ?rotation_cs platform)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 2 )(actions ?robot find ?cap_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 3 )(actions ?robot take ?cap_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 4 )(actions ?robot move entrance)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 5 )(actions ?robot drop ?cap_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 6 )(actions ?robot ask take ?cap_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 7 )(actions ?robot move output)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 8 )(actions ?robot find base_translucid)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 9 )(actions ?robot take base_translucid)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 10 )(actions ?robot move platform)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 11 )(actions ?robot drop base_translucid)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 12 )(actions ?robot goto BS ?zone_bs ?rotation_bs output)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 13 )(actions ?robot ask base ?base_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 14 )(actions ?robot find ?base_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 15 )(actions ?robot take ?base_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 16 )(actions ?robot goto CS ?zone_cs ?rotation_cs entrance)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 17 )(actions ?robot drop ?base_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 18 )(actions ?robot ask put cap)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 19 )(actions ?robot move output)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 20 )(actions ?robot find ?base_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 21 )(actions ?robot take ?base_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 22 )(actions ?robot goto DS ?zone_ds ?rotation_ds entrance)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 23 )(actions ?robot drop ?base_color)) )
        (assert (plan (name C0)(id ?*plan_number*) (number 24 )(actions ?robot ask moveto ?gate)) )
        (assert (attempt (name C0) (id ?*plan_number*) (robot ?robot) (move base-cap)(number 24 )))
	(modify ?Robot (status bussy))
	(assert (finish-planner C0 ?*plan_number* 1))
        (bind ?*plan_number_new* (+ 1 ?*plan_number_new*))
        (printout t "Robot " ?robot " will be execute a plan for an order of type C0" crlf)
)


(defrule finish-plan
        (declare (salience 100))
        ?f <- (alive clips)
        ?f1 <- (finish-planner ?name ?num_pln ?n)
        (ros-node ?node)
        =>
        (retract ?f ?f1)
        (assert (finish ?name ?num_pln ?n))
        (rospub ?node "clips alive 1")
        (printout ROS "clips alive 1" crlf)
)


(defrule send-num_plans-total
        ?f1 <- (finish ?name ?num_pln ?n)
        ?f <- (get-num-plans-total)
        (ros-node ?node)
        =>
        (retract ?f1 ?f)
        (bind ?*plan_number_new* 0)
        ;(printout t "send num-plans-total " ?num_pln  crlf)
        (assert (send-ROS ACT-PLN num_plans-total ?name ?num_pln ?n ))
)



(defrule send-num_plans-pl
        ;(declare (salience 100))
        (get-num-plans-number ?npl)
        (attempt (id ?npl) (number ?n) (status nil))
        =>
        ;(printout t "send plans number " ?npl " " ?n  crlf)
        (assert (send-ROS ACT-PLN num_plans-number ?npl ?n 1.0 4))
)


(defrule send-ros-num_plans
        (declare (salience 100))
        ?f <-  (get-num-plans-total)
        ?f1 <- (send-ROS ?system num_plans-total ?npl ?num)
        (ros-node ?node)
        =>
        (retract ?f ?f1)
        ;(retract ?f1)
        (bind ?var (str-cat ?system " num_plans-total " ?npl " " ?num))
        (rospub ?node ?var)
        (printout ROS ?var crlf)
)

(defrule send-ros-num_plans-number
        (declare (salience 100))
        (ros-node ?node)
        ?f <-  (get-num-plans-number ?npl)
        ?f1 <- (send-ROS ?system num_plans-number ?npl ?num ?t ?n)
        =>
        (retract ?f ?f1)
        ( bind ?var (str-cat ?system " num_plans-number " ?npl " " ?num " " ?t ))
        (rospub ?node ?var)
        (printout ROS ?var crlf)
)



(defrule send-plan-one-argument
        (ros-node ?node)
        ?f1 <- (send-ROS ?system ?id ?nm ?robot ?argument)
        =>
        (retract ?f1)
        (bind ?var (str-cat ?system " " ?id " " ?nm " " ?robot " " ?argument))
        (rospub ?node ?var)
        (printout ROS ?var crlf)
)

(defrule send-plan-two-arguments
        (ros-node ?node)
        ?f1 <- (send-ROS ?system ?id&:(neq ?id num_plans-total) ?nm ?robot ?arg1 ?arg2)
        =>
        (retract ?f1)
        (bind ?var (str-cat ?system " " ?id " " ?nm " " ?robot " " ?arg1 " " ?arg2 ))
        (rospub ?node ?var)
        (printout ROS ?var crlf)
)

(defrule send-plan-three-arguments
        (declare (salience 100))
        (ros-node ?node)
        ?f1 <- (send-ROS ?system ?id ?nm ?robot ?arg1 ?arg2 ?arg3)
        =>
        (retract ?f1)
        (bind ?var (str-cat ?system " " ?id " " ?nm " " ?robot " "  ?arg1 " " ?arg2 " " ?arg3))
        (rospub ?node ?var)
        (printout ROS ?var crlf)
)

(send-ROS ACT-PLN 1 1 Festina goto M_Z47 0 platform)

(defrule send-plan-four-arguments
        (declare (salience 100))
        (ros-node ?node)
        ?f1 <- (send-ROS ?system ?id ?nm ?robot ?arg1 ?arg2 ?arg3 ?arg4)
        =>
        (retract ?f1)
        (bind ?var (str-cat ?system " " ?id " " ?nm " " ?robot " "  ?arg1 " " ?arg2 " " ?arg3 " " ?arg4))
        (rospub ?node ?var)
        (printout ROS ?var crlf)
)


(defrule send-plan-five-arguments
        (declare (salience 100))
        (ros-node ?node)
        ?f1 <- (send-ROS ?system ?id ?nm ?robot ?arg1 ?arg2 ?arg3 ?arg4 ?arg5)
        =>
        (retract ?f1)
        (bind ?var (str-cat ?system " " ?id " " ?nm " " ?robot " "  ?arg1 " " ?arg2 " " ?arg3 " " ?arg4 " " ?arg5))
        (rospub ?node ?var)
        (printout ROS ?var crlf)
)



(defrule send-plan
        (declare (salience 100))
        ?f <- (step ?id ?num)
        ?f1 <- (plan (name ?name)(id ?id)(number ?num)(actions $?arguments)(status inactive))
        =>
        (retract ?f)
        (modify ?f1 (status active))
        (printout t "send plan " $?arguments  crlf)
        (assert (send-ROS ACT-PLN ?id ?num $?arguments ))
)



(defrule plan-id-executed
	?f1 <- (plans ?id ?num 1)
	?f2 <- (plan (id ?id) (number ?num) (status active) )
        =>
	(retract ?f1 ?f2)
)


(defrule plan-fullfilt
        ?f1 <- (attempts ?npl ?result)
        ?f2 <- (attempt (id ?npl) (robot ?robot))
	?Robot <- (Robot (name ?robot))
	
        =>
	(retract ?f1 ?f2)
	(modify ?Robot (status idle))
        (printout t "plan " ?npl " executed" crlf)
)

