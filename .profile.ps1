# Run `notepad $PROFILE` and add below snippet
# $profileEnvScript = "C:\Users\hoang\workspace\dev-infra\dev-manual\.profile.ps1"

# if (Test-Path $profileEnvScript) {
#     . $profileEnvScript
# }

Set-Alias -Name which -Value where.exe

function SourceProfile { . $PROFILE }
Set-Alias -Name sob -Value SourceProfile

$WorkspaceDir = "C:\Users\hoang\workspace"

function GoToCDev { Set-Location "$WorkspaceDir\dev-infra\dev-manual" }
Set-Alias -Name gdev -Value GoToCDev

function CodeCDev { code "$WorkspaceDir\dev-infra\dev-manual" }
Set-Alias -Name cdev -Value CodeCDev
