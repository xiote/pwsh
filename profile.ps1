# 프로파일 생성
# http://gitlab.krei.co.kr:90/nextep/common/wikis/powershell/프로파일-생성

# include lines in profile.ps1

#curl https://raw.githubusercontent.com/xiote/zsh/master/profile.ps1 -OutFile .\profile.ps1
#. .\profile.ps1

set-alias cat2 get-content

function aliascheck {
	Write-Host "Alias Check : Ok!"
}
