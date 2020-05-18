# 프로파일 생성
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7

# include lines in profile.ps1

#rm .\profile.ps1
#curl https://raw.githubusercontent.com/xiote/pwsh/master/profile.ps1 -o .\profile.ps1
#. .\profile.ps1

set-alias cat2 get-content

function aliascheck {
	Write-Host "Alias Check : Ok!"
}

function src {
	rm .\profile.ps1
	curl https://raw.githubusercontent.com/xiote/pwsh/master/profile.ps1 -o .\profile.ps1
	. .\profile.ps1
}

function vimcnf {
    rm -r ~/.vim
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        
    rm ~/.vimrc
    curl -L https://raw.githubusercontent.com/xiote/vim/master/.vimrc -o ~/.vimrc

#    mkdir -p ~/.vim/pack/plugins/start

#    git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki;
#    git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/plugins/start/fugitive;
#    git clone https://github.com/xiote/link.vim.git ~/.vim/pack/plugins/start/link.vim;
#    git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/pack/plugins/start/syntastic
#    git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
}
