Param([Hashtable] $parameters)

New-BcContainer @parameters
Invoke-ScriptInBcContainer $parameters.ContainerName -scriptblock {
    $progressPreference = 'SilentlyContinue'
}
Write-Host @'
           _           _____                               _                   _ 
     /\   | |         / ____|                             | |                 | |
    /  \  | |  ______| |  __  ___    __      ____ _ ___   | |__   ___ _ __ ___| |
   / /\ \ | | |______| | |_ |/ _ \   \ \ /\ / / _` / __|  | '_ \ / _ \ '__/ _ \ |
  / ____ \| |____    | |__| | (_) |   \ V  V / (_| \__ \  | | | |  __/ | |  __/_|
 /_/    \_\______|    \_____|\___/     \_/\_/ \__,_|___/  |_| |_|\___|_|  \___(_)
'@
