(Policy BadPhonePolicy uses phonepolicy
        (Target )

        (Rules 
  	  (TollFreeCall = (TollFree src dest) :- (GetExchangexxx src e1) (GetExchange dest e1))
	  (TollCall = (Toll src dest) :- (GetExchange src e2) (GetExchange dest e3) (!= e2 e3))
	  (RefuseCall1 = (Refuse src dest) :- (OutOfService src))
          (RefuseCall2 = (Refuse src dest) :- (OutOfService dest))
          (RefuseCall3 = (Refuse src dest) :- (= src dest))
        )
        (RComb O Refuse Toll TollFree)
        (PComb O Refuse Toll TollFree)
	(Children ))
