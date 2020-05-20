# 프로파일 생성
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7

# include lines in profile.ps1

#rm $home\profile.ps1
#curl https://raw.githubusercontent.com/xiote/pwsh/master/profile.ps1 -o $home\profile.ps1
#. $home\profile.ps1

set-alias cat2 get-content

function aliascheck {
	Write-Host "Alias Check : Ok!"
}

function src {
	rm $home\profile.ps1
	curl https://raw.githubusercontent.com/xiote/pwsh/master/profile.ps1 -o $home\profile.ps1
	. $home\profile.ps1
}

function vimcnf {
	Remove-Item -Path ~\vimfiles\autoload -Recurse
	md ~\vimfiles\autoload
	$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	(New-Object Net.WebClient).DownloadFile(
	  $uri,
	  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
	    "~\vimfiles\autoload\plug.vim"
	  )
	)
	
	rm $home\.vimrc
	curl https://raw.githubusercontent.com/xiote/vim/master/.vimrc -o $home\.vimrc
}

function ahkcnf {
	rm $home\main.ahk
	curl https://raw.githubusercontent.com/xiote/autohotkey/master/main.ahk -o $home\main.ahk
	autohotkey $home\main.ahk
}

function ahk {
	autohotkey $home\github.com\xiote\autohotkey\main.ahk
}
