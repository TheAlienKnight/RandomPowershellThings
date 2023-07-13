#######
##
## Local - Downloads a file from a remote (web) server
##
#######
try {
$Res = Invoke-WebRequest -Uri "SomeWebURLThatHasAFileHere" -UseBasicParsing
} catch {
$StatusCode = $_.Exception.Response.StatusCode.value__
}
$StatusCode
$Writer = [System.IO.StreamWriter]::new('.\Test.md', $false, $Res.Encoding)

$Writer.Write($Res.Content)
# Must close and dispose of it. Dispose closes, and removes it
$Writer.Dispose()
