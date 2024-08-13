Param([Hashtable] $parameters)

$parameters | ConvertTo-Json -Depth 99 | Out-Host
$tempPath = Join-Path ([System.IO.Path]::GetTempPath()) ([GUID]::NewGuid().ToString())
New-Item -ItemType Directory -Path $tempPath | Out-Null
Copy-AppFilesToFolder -appFiles $parameters.apps -folder $tempPath | Out-Null
Get-ChildItem -Path $tempPath -Filter *.app | Out-Host
$authContext = $parameters.authContext | ConvertFrom-Json
Write-Host "Token Length: $($authContext.Token.Length)"
