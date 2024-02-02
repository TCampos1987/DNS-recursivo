$TTL 3600
@       IN SOA  ns1.example.com. root.example.com. (
              2023020101  ; Serial
              3600       ; Refresh
              1800       ; Retry
              604800     ; Expire
              3600       ; Minimum TTL
)

@       IN NS   ns1.example.com.
@       IN NS   ns2.example.com.

@       IN A    IP server principal
*       IN A    IP server 2
*       IN A    Ip server 3 
*       IN A    IP server 4

