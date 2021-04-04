#Setting nama Device
/system identity set name=R2

#Setting IP Address
/ip address 
add address=10.0.0.2/24 interface=ether1
add address=192.168.2.1/24 interface=ether2

#Copy Certificate

#Tambah Routing lewat OVPN
/ip route
add dst-address=192.168.1.0/24 gateway=12.0.0.1

#Verifikasi IP Address
ping 10.0.0.1
ping 192.168.2.2



#Import Certificate

#Buat OVPN Client
