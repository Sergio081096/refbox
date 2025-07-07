
;************************************************
;*						*
;*	Logistics Initial State 		*
;*						*
;*                      J.Savage, UNAM          *
;*						*
;*                      4/6/2024                *
;*                                              *
;************************************************

(deffacts Initial-state-objects-rooms-zones-actors

; ROS node to send data
	(ros-node "clips_out")
	(keep-clips-alive)

; Objects definitions
;	( item (type Objects) (name mail_box)(room corridor)(image table)( attributes no-pick brown)(pose 0.25 1.00 0.0))

; Robots definitions
	( Robot (name Festino)(zone frontentrance)(pose 0.0 0.0 0.0)(team CYAN))
	( Robot (name Festina)(zone frontentrance)(pose 0.0 0.0 0.0)(team CYAN))


)




