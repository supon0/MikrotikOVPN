#Setting nama Device
/system identity set name=R1 

#Setting IP Address
/ip address 
add address=10.0.0.1/24 interface=ether1
add address=192.168.1.1/24 interface=ether2

#Setting OVPN
/interface ovpn-server server 
set enabled=yes certificate=R1

#Menambah User OVPN
/ppp secret 
add name=R2 password=123 local-address=12.0.0.1 remote-address=12.0.0.2

#Menambah routing lewat OVPN
/ip route 
add dst-address=192.168.2.0/24 gateway=12.0.0.2

#Verifikasi
/interface ovpn-server server print

#Monitoring OVPN
/interface ovpn-server monitor 0
