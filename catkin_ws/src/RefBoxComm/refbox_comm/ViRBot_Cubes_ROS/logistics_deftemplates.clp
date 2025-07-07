
;************************************************
;*						*
;*	Logistics deftemplates definitions	*
;*						*
;*			J.Savage, UNAM		*
;*			4/6/2024		*
;*						*
;************************************************


(deftemplate ring
        (field color
                 (type SYMBOL)
                 (default nil)
        )
        (field raw_material
                 (type NUMBER)
                 (default 0)
        )
        (multifield status
                 (type SYMBOL)
                 (default nil)
        )
        (multifield attributes
                 (type SYMBOL)
                 (default nil)
        )
        (multifield pose
                 (type NUMBER)
                 (default 0 0 0)
        )
	(field machine
                (type SYMBOL)
                (default nil)
        )
        (field zone
                 (type SYMBOL)
                 (default nil)
        )
        (field possession
                 (type SYMBOL)
                 (default nobody)
        )
        (field image
                 (type SYMBOL)
                 (default nil)
        )
)



(deftemplate machine
        (field name
                 (type SYMBOL)
                 (default nil)
        )
        (field type
                 (type SYMBOL)
                 (default nil)
        )
        (multifield state
                 (type SYMBOL)
                 (default nil)
        )
        (multifield team_color
                 (type SYMBOL)
                 (default nil)
        )
        (multifield pose
                 (type NUMBER)
                 (default 0 0 0)
        )
        (field machine
                (type SYMBOL)
                (default nil)
        )
        (field zone
                 (type SYMBOL)
                 (default nil)
        )
        (field rotation
                 (type NUMBER)
                 (default 0)
        )
        (multifield ring_colors
                 (type SYMBOL)
                 (default nil nil)
        )
)


(deftemplate order
        (field id
                 (type NUMBER)
                 (default 0)
        )
        (field complexity
                 (type SYMBOL)
                 (default NIL)
        )
        (field base_color
                 (type SYMBOL)
                 (default nil)
        )
        (field cap_color
                 (type SYMBOL)
                 (default nil)
        )
        (multifield ring_colors
                 (type SYMBOL)
                 (default NIL NIL NIL)
        )
        (field quantity_requested
                (type NUMBER)
                (default 0)
        )
        (field quantity_delivered_cyan
                (type NUMBER)
                (default 0)
        )
        (field quantity_delivered_magenta
                (type NUMBER)
                (default 0)
        )
        (field delivery_period_begin 
                 (type NUMBER)
                 (default 0)
        )
        (field delivery_period_end 
                 (type NUMBER)
                 (default 0)
        )
        (field delivery_gate 
                 (type NUMBER)
                 (default 0)
        )
        (field competitive
                 (type SYMBOL)
                 (default NIL)
        )
)




(deftemplate goal (slot move)(slot room)(slot zone)(slot on))

(deftemplate attempt 
	(field name
                 (type SYMBOL)
                 (default nil)
        )
	(field id
                (type NUMBER)
                (default 1)
        )
	(field robot
		(type SYMBOL)
		(default nil)
	)
	(slot move)
	(slot state)
	(slot room)
	(slot zone)
	(slot human)
	(slot on)
	(slot number)
	(slot question)
	(field status (type SYMBOL) (default nil)) 
)


(deftemplate plan
        (field name
                 (type SYMBOL)
                 (default nil)
        )
        (field id
                (type NUMBER)
                (default 1)
        )
        (field number
                (type NUMBER)
                (default 1)
        )
        (multifield actions
                (type SYMBOL)
        )
        (field duration
                (type NUMBER)
                (default 1)
        )
        (field status
                 (type SYMBOL)
                 (default inactive)
        )
        (
         field statusTwo
                (type SYMBOL)
                (default active)
        )

)


(deftemplate Robot
        (field name
                 (type SYMBOL)
                 (default nil)
        )
        (field manipulator
                 (type SYMBOL)
                 (default empty)
        )
        (field zone
                 (type SYMBOL)
                 (default entrance)
        )
        (field status
                 (type SYMBOL)
                 (default idle)
        )
        (field team
                 (type SYMBOL)
                 (default CYAN)
        )
        (multifield pose
                 (type NUMBER)
                 (default 0 0 0)
        )

)


