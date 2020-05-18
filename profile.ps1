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
	
	Remove-Item ~\.vimrc
	$uri = 'https://raw.githubusercontent.com/xiote/vim/master/.vimrc'
	(New-Object Net.WebClient).DownloadFile(
	  $uri,
	  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
	    "~\.vimrc"
	  )
	)
}
