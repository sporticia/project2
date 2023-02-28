Write-Host "This is a script that could use $env:SYSTEM_ACCESSTOKEN"
Write-Host "$env:SYSTEM_ACCESSTOKEN = ${System.AccessToken}"

$dockerfilePath = "../pipelines/ui/Dockerfile"
