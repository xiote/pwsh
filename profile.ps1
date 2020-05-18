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
    rm -r $home\.vim
    curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -fLo $home\.vim\autoload\plug.vim --create-dirs
    rm -r $home/github.com/xiote/vim
    git clone https://github.com/xiote/vim.git $home/github.com/xiote/vim
}
