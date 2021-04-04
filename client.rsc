#Setting nama Device
/system identity set name=R2

#Setting IP Address
/ip address 
add address=10.0.0.2/24 interface=ether1
add address=192.168.2.1/24 interface=ether2

#Verifikasi IP Address
ping 10.0.0.1
ping 192.168.2.2

#Tambah Routing lewat OVPN
/ip route
add dst-address=192.168.1.0/24 gateway=12.0.0.1

#Copy Certificate
/tool fetch mode=ftp user=admin password="" address=10.0.0.1 src-path=rootCA.key
/tool fetch mode=ftp user=admin password="" address=10.0.0.1 src-path=RootCA.crt

#Import Certificate
import file-name=rootCA.crt passphrase=12345678
import file-name=rootCA.key passphrase=12345678

#Buat OVPN Client
