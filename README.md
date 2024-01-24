# general-bind9-setting
Instructions and example files for building your own nameservers :computer: <br>
Skip the Bind9 installation process

## 0. Basic tasks
On the Manage Domain Registrars page, set up the nameservers for the domains you want to use as nameservers. This varies by registrar<br>
Open TCP/UDP port 53 or open all ports

## 1. Modify ```/etc/bind/named.conf.local``` to match the file of the same name in your repository
This file is the Bind9 default file and is where you add the files for the domain you want to manage records for

## 2. Create a file called ```/etc/bind/db.dnsserver.com```, which is the domain you want to use as your nameserver
If you added records to manage in step 1, it will create a file with the same name in the path you set.

## 3. Modify the ```db.dnsserver.com``` file to look like the file of the same name in your repository
This is a basic nameserver domain setup method and should be required for the nameservers to work.

## 4. The basic nameserver setup is now complete, enter the following command to apply it
```
sudo named-checkconf
sudo named-checkzone dnsserver.com /etc/bind/db.dnsserver.com
sudo systemctl restart bind9
```

## 5. Now create ```/etc/bind9/db.test.net``` to make it accessible through ```ns1.dnsserver.com```
Create using a file of the same name in the repository

## 6. Enter the following command to apply
```
sudo named-checkconf
sudo named-checkzone test.net /etc/bind/db.test.net
sudo systemctl restart bind9
```

### Etc.
* It can take a long time to propagate to DNS servers
* The files in this repository are example files and will require some modifications to be used in practice, such as domain names, A record IPs, etc.
