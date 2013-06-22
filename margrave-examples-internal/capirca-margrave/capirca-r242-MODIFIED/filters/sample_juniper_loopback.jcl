firewall {
    family inet {
        replace:
        /*
        ** $Id: ./filters\sample_juniper_loopback.jcl $
        ** $Date: 2013/06/22 $
        **
        ** Sample Juniper lookback filter
        */
        filter LOOPBACK {
            interface-specific;
            term accept-icmp {
                from {
                    protocol icmp;
                }
                then {
                    count icmp-loopback;
                    policer rate-limit-icmp;
                    accept;
                }
            }
            /*
            ** Allow BGP requests from peers.
            */
            term accept-bgp-requests {
                from {
                    source-prefix-list {
                        configured-neighbors-only;
                    }
                    protocol tcp;
                    destination-port 179;
                }
                then {
                    count bgp-requests;
                    accept;
                }
            }
            /*
            ** Allow inbound replies to BGP requests.
            */
            term accept-bgp-replies {
                from {
                    source-prefix-list {
                        configured-neighbors-only;
                    }
                    protocol tcp;
                    source-port 179;
                    tcp-established;
                }
                then {
                    count bgp-replies;
                    accept;
                }
            }
            /*
            ** Allow outbound OSPF traffic from other RFC1918 routers.
            */
            term accept-ospf {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol ospf;
                }
                then {
                    count ospf;
                    accept;
                }
            }
            term allow-vrrp {
                from {
                    protocol vrrp;
                }
                then {
                    count vrrp;
                    accept;
                }
            }
            term accept-ike {
                from {
                    protocol udp;
                    source-port 500;
                    destination-port 500;
                }
                then {
                    count ipsec-ike;
                    accept;
                }
            }
            term accept-ipsec {
                from {
                    protocol esp;
                }
                then {
                    count ipsec-esp;
                    accept;
                }
            }
            term accept-pim {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol pim;
                }
                then {
                    accept;
                }
            }
            term accept-igmp {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol igmp;
                }
                then {
                    accept;
                }
            }
            term accept-ssh-requests {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol tcp;
                    destination-port 22;
                }
                then {
                    count ssh;
                    accept;
                }
            }
            term accept-ssh-replies {
                from {
                    protocol tcp;
                    source-port 22;
                    tcp-established;
                }
                then {
                    count ssh-replies;
                    accept;
                }
            }
            term accept-snmp-requests {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    destination-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol udp;
                    destination-port 161;
                }
                then {
                    accept;
                }
            }
            term accept-dns-replies {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    destination-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol udp;
                    source-port 53;
                    destination-port 1024-65535;
                }
                then {
                    count dns-replies;
                    accept;
                }
            }
            term allow-ntp-request {
                from {
                    source-address {
                        10.0.0.1/32; /* Example NTP server */
                        10.0.0.2/32; /* Example NTP server */
                    }
                    destination-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol udp;
                    destination-port 123;
                }
                then {
                    count ntp-request;
                    accept;
                }
            }
            term allow-ntp-replies {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    destination-address {
                        10.0.0.1/32; /* Example NTP server */
                        10.0.0.2/32; /* Example NTP server */
                    }
                    protocol udp;
                    source-port 123;
                    destination-port 1024-65535;
                }
                then {
                    count ntp-replies;
                    accept;
                }
            }
            term allow-radius-replies {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    destination-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol udp;
                    source-port 1812;
                }
                then {
                    count radius-replies;
                    accept;
                }
            }
            term allow-tacacs-requests {
                from {
                    source-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    destination-address {
                        10.1.0.1/32; /* Example tacacs server */
                        10.1.0.2/32; /* Example tacacs server */
                    }
                    protocol tcp;
                    destination-port 49;
                }
                then {
                    count tacacs-requests;
                    accept;
                }
            }
            term allow-tacacs-replies {
                from {
                    source-address {
                        10.1.0.1/32; /* Example tacacs server */
                        10.1.0.2/32; /* Example tacacs server */
                    }
                    destination-address {
                        10.0.0.0/8; /* non-public */
                        172.16.0.0/12; /* non-public */
                        192.168.0.0/16; /* non-public */
                    }
                    protocol tcp;
                    source-port 49;
                    tcp-established;
                }
                then {
                    count tacacs-replies;
                    accept;
                }
            }
            term discard-default {
                then {
                    count discard-default;
                    discard;
                }
            }
        }
    }
}

