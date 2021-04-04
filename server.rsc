#Setting nama Device
/system identity set name=R1 

#Setting IP Address
/ip address add address=10.0.0.1/24 interface=ether1
/ip address add address=192.168.1.1/24 interface=ether2

#Setting OVPN
/interface ovpn-server server set enabled=yes
/interface ovpn-server server set certificate=R1

#Menambah User OVPN
/ppp secret add name=client1 password=123 local-address=12.0.0.1 remote-address=12.0.0.2

#Verifikasi
/interface ovpn-server server print

#Monitoring OVPN
/interface ovpn-server monitor 0
