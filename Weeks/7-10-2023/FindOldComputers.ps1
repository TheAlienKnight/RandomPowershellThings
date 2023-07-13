#######
##
## Active Directory - Find old PCs that haven't logged in for 90 days (or another # of days)
## Note: There is 100% a better way to do this, but I am used to Unix timestamps and switching between FileTime and not is gonna mess with me lol
##
#######

Set-StrictMode -Off 
$days = 90
# Multiplying by 10000000 converts seconds to ns 
# 116444736000000000 - Magic number #2
# lastLogon is apparently more accurate since it is when AD detects the logout?

Get-ADComputer -Filter * -Properties * | Where-Object -Property lastLogon -lt ((((Get-Date -UFormat %s)-(86400*$days))* 10000000)+116444736000000000) | Select-Object -Property lastLogon,Name
