# Run `notepad $PROFILE` and add below snippet
# $profileEnvScript = "C:\Users\develop\workspace\dev-infra\dev-manual\.profile.ps1"

# if (Test-Path $profileEnvScript) {
#     . $profileEnvScript
# }

Set-Alias -Name which -Value where.exe

function SourceProfile { . $PROFILE }
Set-Alias -Name sob -Value SourceProfile

$WorkspaceDir = "C:\Users\develop\workspace"

function GoToCDev { Set-Location "$WorkspaceDir\dev-infra\dev-manual" }
Set-Alias -Name gdev -Value GoToCDev

function CodeCDev { code "$WorkspaceDir\dev-infra\dev-manual" }
Set-Alias -Name cdev -Value CodeCDev

function GitPullMaster { git pull origin master }
Set-Alias -Name gitm -Value GitPullMaster

function GitPushMaster { git push origin master }
Set-Alias -Name gitpm -Value GitPushMaster

function GitPullCurrent { git pull origin $(git branch --show-current) }
Set-Alias -Name gitc -Value GitPullCurrent

function GitPushCurrent { git push origin $(git branch --show-current) }
Set-Alias -Name gitpc -Value GitPushCurrent
