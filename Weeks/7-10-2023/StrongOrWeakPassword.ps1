Param(
    [string[]]$Pass
)
$API = "http://www.dinopass.com/password/simple", "http://www.dinopass.com/password/strong"
if ($null -eq $Pass) {
    $Pass = @()
    $Res = Invoke-WebRequest -Uri "$(Get-Random -InputObject $API)" -UseBasicParsing
    $Pass += $Res.Content
}
foreach($password in $Pass) {
    if (([regex]::matches($password, '[^a-zA-Z0-9]').count -ge 1 ) -and ([regex]::matches($password, '[\d]').count -ge 2)) {
        Write-Output "$password is considered strong"
    } else {
        Write-Output "$password is considered weak"
    }
}
