Param([Hashtable] $parameters)

Get-ChildItem -Path $parameters.appsFolder | Out-Host
$context = $parameters.context | ConvertFrom-Json
Write-Host "Token Length: $($context.Token.Length)"
