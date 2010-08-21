(PolicyVocab
 IOS-vocab
 (Types
  (Hostname : hostname-int hostname-ext)
  (Interface : interf-drop (interf-real in_lan in_dmz out_dmz out_inet))
  (IPAddress (10.200.0.0/255.255.0.0 10.200.200.200) (10.1.1.0/255.255.255.0 10.1.1.1 10.1.1.4 10.1.1.3) (192.168.0.0/255.255.0.0 192.168.1.2 192.168.4.0/255.255.255.0))
  (Protocol : prot-ICMP prot-TCP prot-UDP)
  (Port port-23 port-80 port-25)
  (ICMPMessage : icmp-echo icmp-echo-reply icmp-time-exceeded icmp-unreachable)
  (TCPFlags : SYN ACK FIN PSH URG RST)
  (Length :))
 (Decisions Permit Deny Translate Route Forward Drop Pass Advertise Encrypt)
 (Predicates)
 (ReqVariables
  (hostname : Hostname)
  (entry-interface : interf-real)
  (src-addr-in : IPAddress)
  (src-addr-out : IPAddress)
  (dest-addr-in : IPAddress)
  (dest-addr-out : IPAddress)
  (protocol : Protocol)
  (message : ICMPMessage)
  (flags : TCPFlags)
  (src-port-in : Port)
  (src-port-out : Port)
  (dest-port-in : Port)
  (dest-port-out : Port)
  (length : Length)
  (next-hop : IPAddress)
  (exit-interface : Interface))
 (OthVariables)
 (Constraints
  (abstract Hostname)
  (abstract Interface)
  (abstract interf-real)
  (abstract ICMPMessage)
  (abstract Protocol)
  (disjoint-all Hostname)
  (disjoint-all Interface)
  (disjoint-all interf-real)
  (disjoint-all IPAddress)
  (disjoint-all Protocol)
  (disjoint-all Port)
  (disjoint-all ICMPMessage)
  (disjoint-all Length)
  (atmostone-all interf-real)
  (atmostone interf-drop)
  (atmostone 192.168.1.2)
  (disjoint-all 192.168.0.0/255.255.0.0)
  (atmostone 10.1.1.3)
  (atmostone 10.1.1.4)
  (atmostone 10.1.1.1)
  (disjoint-all 10.1.1.0/255.255.255.0)
  (atmostone 10.200.200.200)
  (disjoint-all 10.200.0.0/255.255.0.0)
  (disjoint-all IPAddress)
  (atmostone-all Protocol)
  (atmostone port-25)
  (atmostone port-80)
  (atmostone port-23)
  (disjoint-all Port)
  (atmostone icmp-echo)
  (atmostone icmp-echo-reply)
  (atmostone-all Length)
  (nonempty Hostname)
  (nonempty Interface)
  (nonempty IPAddress)
  (nonempty Protocol)
  (nonempty Port)
  (nonempty ICMPMessage)
  (nonempty TCPFlags)
  (nonempty Length)))
