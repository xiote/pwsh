# 프로파일 생성
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7

# include lines in profile.ps1

#curl https://raw.githubusercontent.com/xiote/pwsh/master/profile.ps1 -o .\profile.ps1
#. .\profile.ps1

set-alias cat2 get-content

function aliascheck {
	Write-Host "Alias Check : Ok!"
}

function src {
	curl h://raw.githubusercontent.com/xiote/pwsh/master/profile.ps1 -o .\profile.ps1
	. .\profile.ps1
}
