#######
##
## Active Directory - Find and Unlock Locked out User Accounts
##
#######

Search-ADAccount -LockedOut | Unlock-ADAccount -Verbose
