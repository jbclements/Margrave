(Policy
 InsideNAT
 uses
 IOS-vocab
 (Target)
 (Rules
  (NAT-line-17-ACE-hostname-intern-line-21-g1978g1979
   =
   (Translate
    hostname
    entry-interface
    src-addr-in
    src-addr-out
    dest-addr-in
    dest-addr-out
    protocol
    message
    flags
    src-port-in
    src-port-out
    dest-port-in
    dest-port-out
    length
    next-hop
    exit-interface)
   :-
   (hostname-intern hostname)
   (in_lan entry-interface)
   (192.168.0.0/255.255.0.0 src-addr-in)
   (10.1.1.1 src-addr-out)
   (= dest-addr-in dest-addr-out)
   (Port src-port-out)
   (= dest-port-in dest-port-out))
  (NAT-hostname-intern-line-17-g1980
   =
   (Drop
    hostname
    entry-interface
    src-addr-in
    src-addr-out
    dest-addr-in
    dest-addr-out
    protocol
    message
    flags
    src-port-in
    src-port-out
    dest-port-in
    dest-port-out
    length
    next-hop
    exit-interface)
   :-
   (hostname-intern hostname)
   (in_lan entry-interface)
   (192.168.0.0/255.255.0.0 src-addr-in))
  (hostname-intern-default-NAT-g1935
   =
   (Translate
    hostname
    entry-interface
    src-addr-in
    src-addr-out
    dest-addr-in
    dest-addr-out
    protocol
    message
    flags
    src-port-in
    src-port-out
    dest-port-in
    dest-port-out
    length
    next-hop
    exit-interface)
   :-
   (= src-addr-in src-addr-out)
   (= dest-addr-in dest-addr-out)
   (= src-port-in src-port-out)
   (= dest-port-in dest-port-out)
   (hostname-intern hostname))
  (hostname-extern-default-NAT-g1935
   =
   (Translate
    hostname
    entry-interface
    src-addr-in
    src-addr-out
    dest-addr-in
    dest-addr-out
    protocol
    message
    flags
    src-port-in
    src-port-out
    dest-port-in
    dest-port-out
    length
    next-hop
    exit-interface)
   :-
   (= src-addr-in src-addr-out)
   (= dest-addr-in dest-addr-out)
   (= src-port-in src-port-out)
   (= dest-port-in dest-port-out)
   (hostname-extern hostname)))
 (RComb FAC)
 (PComb FAC)
 (Children))