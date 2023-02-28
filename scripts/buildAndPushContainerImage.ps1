Write-Host "This is a script that could use $env:AZURE_DEVOPS_EXT_PAT"
Write-Host "$env:AZURE_DEVOPS_EXT_PAT = ${System.AccessToken}"


cat ui/docker/secrets/npm_token.txt
