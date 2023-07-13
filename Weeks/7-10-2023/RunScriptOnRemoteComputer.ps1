#######
##
## Active Directory - Runs a script on a remote users computer in powershell
## Note: This is super basic lol
##
#######

Invoke-Command -ComputerName 'SomeRandomComputerName' -ScriptBlock { (Get-Host).Version }
