(PolicyVocab
 IOS-vocab
 (Types
  (Hostname : hostname-tas hostname-baz)
  (Interface : interf-drop (interf-real GigabitEthernet0/0 Serial0/3/0:0 GigabitEthernet0/1))
  (IPAddress
   (10.232.8.0/255.255.252.0 10.232.8.10)
   (10.232.0.0/255.255.252.0 10.232.0.15)
   192.168.1.0/255.255.255.0
   (10.254.1.128/255.255.255.252 10.254.1.129 10.254.1.130)
   10.232.100.0/255.255.252.0
   10.232.104.0/255.255.252.0
   10.232.4.0/255.255.252.0)
  (Protocol : prot-ICMP prot-TCP prot-UDP)
  (Port)
  (ICMPMessage : icmp-echo icmp-echo-reply icmp-time-exceeded icmp-unreachable)
  (TCPFlags : NONE SYN ACK FIN PSH URG RST)
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
  (atmostone 10.254.1.130)
  (atmostone 10.254.1.129)
  (disjoint-all 10.254.1.128/255.255.255.252)
  (atmostone 10.232.0.15)
  (disjoint-all 10.232.0.0/255.255.252.0)
  (atmostone 10.232.8.10)
  (disjoint-all 10.232.8.0/255.255.252.0)
  (disjoint-all IPAddress)
  (atmostone-all Protocol)
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