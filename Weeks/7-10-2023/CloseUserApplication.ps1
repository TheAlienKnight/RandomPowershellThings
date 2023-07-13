#######
##
## Active Directory - Close an application/process on a users computer
##
##
#######

Enter-PSSession -ComputerName "SomeComputerNameHere" | Get-Process -name SomeProgramOrProcessNameHere | Stop-Process
