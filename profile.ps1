# 프로파일 생성
# https://docs.microsoft.com/en-us/previous-versions//bb613488(v=vs.85)?redirectedfrom=MSDN

# include lines in profile.ps1

#curl https://raw.githubusercontent.com/xiote/zsh/master/profile.ps1 -OutFile .\profile.ps1
#. .\profile.ps1

set-alias cat2 get-content

function aliascheck {
	Write-Host "Alias Check : Ok!"
}
