```
New-NetIPAddress -InterfaceAlias "vEthernet (ProxyInternal)" -IPAddress 10.0.250.1 -PrefixLength 24
New-NetFirewallRule -DisplayName "NekoBox SOCKS from Hyper-V VM TCP" -Direction Inbound -Action Allow -Protocol TCP -LocalAddress 10.0.250.1 -LocalPort 2081 -InterfaceAlias "vEthernet (ProxyInternal)"
New-NetFirewallRule -DisplayName "NekoBox SOCKS from Hyper-V VM UDP" -Direction Inbound -Action Allow -Protocol UDP -LocalAddress 10.0.250.1 -LocalPort 2081 -InterfaceAlias "vEthernet (ProxyInternal)"

```
