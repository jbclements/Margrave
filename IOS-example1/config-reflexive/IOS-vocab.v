(PolicyVocab
 IOS-vocab
 (Types
  (Hostname : hostname-Router)
  (Interface : interf-drop (interf-real Vlan1 FastEthernet0))
  (IPAddress (ip-209-172-108-0/ip-255-255-255-224 ip-209-172-108-1 ip-209-172-108-16) (ip-192-168-2-0/ip-255-255-255-0 ip-192-168-2-6))
  (Protocol : prot-ICMP prot-TCP prot-UDP)
  (Port port-3389 port-23 port-20 port-21 port-80)
  (ICMPMessage : icmp-echo icmp-echo-reply icmp-time-exceeded icmp-unreachable)
  (TCPFlags : NONE SYN ACK FIN PSH URG RST)
  (Length :))
 (Decisions Permit Deny Translate Route Forward Drop Pass Advertise Encrypt)
 (Predicates (Connection-returntcp : IPAddress Port Protocol IPAddress Port))
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
  (atmostone ip-192-168-2-6)
  (disjoint-all ip-192-168-2-0/ip-255-255-255-0)
  (atmostone ip-209-172-108-16)
  (atmostone ip-209-172-108-1)
  (disjoint-all ip-209-172-108-0/ip-255-255-255-224)
  (disjoint-all IPAddress)
  (atmostone-all Protocol)
  (atmostone port-80)
  (atmostone port-21)
  (atmostone port-20)
  (atmostone port-23)
  (atmostone port-3389)
  (disjoint-all Port)
  (atmostone icmp-echo)
  (atmostone icmp-echo-reply)
  (atmostone-all TCPFlags)
  (atmostone-all Length)
  (nonempty Hostname)
  (nonempty Interface)
  (nonempty IPAddress)
  (nonempty Protocol)
  (nonempty Port)
  (nonempty ICMPMessage)
  (nonempty TCPFlags)
  (nonempty Length)))
