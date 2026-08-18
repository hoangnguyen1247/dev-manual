# Run `notepad $PROFILE` and add below snippet
# $profileEnvScript = "C:\Users\hoang\workspace\dev-infra\dev-manual\.profile.ps1"

# if (Test-Path $profileEnvScript) {
#     . $profileEnvScript
# }

Set-Alias -Name which -Value where.exe
