; Deny any non-Margrave tool.
; Permit otherwise

(Policy SubsPolicy uses Subset
	(Target )
	(Rules
         (Rule1 = (Deny t) :- (!Margrave t))
         (RuleDefault = (Permit t) :- true)
                )
                
	(RComb FAC)
	(PComb FAC)
	(Children ))
