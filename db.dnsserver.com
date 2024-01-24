$TTL  1
@  IN  SOA ns1.dnsserver.com. root.dnsserver.com. (
            2023012401 ; Serial
            7200       ; Refresh
            7200       ; Retry
            2419200    ; Expire
            86400  )    ; Negative Cache TTL
;
@  IN  NS  ns1.dnsserver.com.
@  IN  NS  ns2.dnsserver.com.
ns1  IN  A  [Setting NS1 A IP]
ns2  IN  A  [Setting NS2 A IP]
