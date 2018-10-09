(topology
 ((node s1 [name "Web Server"] [vocabname "webserver"] [type 'server] [x 440] [y 120])
  (node s2 [name "Mail Server"] [vocabname "mailserver"] [type 'server] [x 440] [y 500])
  (node f1 [name "FW LAN-DMZ"] [vocabname "fw2int"] [policy "inboundnat_fw2"] [type 'firewall] [x 320] [y 320])
  (node f2 [name "FW DMZ-INET"] [vocabname "fw1dmz"] [policy "inboundacl_fw1_new"] [type 'firewall] [x 620] [y 320])
  (node m1 [name "Internet"] [vocabname "outsideips"] [type 'group] [x 800] [y 320])
  (node h1 [name "Empl 1"] [type 'host] [x 20] [y 20])
  (node h2 [name "Empl 2"] [type 'host] [x 20] [y 140])  
  (node h3 [name "Empl 3"] [type 'host] [x 20] [y 260])
  (node h4 [name "Contr 1"] [type 'host] [vocabname "contractorpc"] [x 20] [y 380])
  (node h5 [name "Contr 2"] [type 'host] [vocabname "contractorpc"] [x 20] [y 500])
  (node h6 [name "Manager"] [vocabname "managerpc"] [type 'host] [x 20] [y 620]))
 
 ((edge f1 h1) (edge h1 f1)
               (edge h2 f1) (edge f1 h2)
               (edge f1 h3) (edge h3 f1)
               (edge h4 f1) (edge f1 h4)
               (edge h5 f1) (edge f1 h5)
               (edge h6 f1) (edge f1 h6)
               
               (edge f1 s1) (edge s1 f1)
               (edge f1 s2) (edge s2 f1)
               (edge f1 f2) (edge f2 f1)
               
               (edge f2 s1) (edge s1 f2)
               (edge f2 s2) (edge s2 f2)
               (edge f2 m1) (edge m1 f2)))