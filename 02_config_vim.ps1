# INSTALAÇÃO E CONFIGURAÇÃO DO VIM
# criação link simbólico
#New-Item -ItemType SymbolicLink -Path $HOME\Documents\files -Target $env:HOMEDRIVE\files

# Copia vimrc e cria pasta vimfiles
Set-Location $env:USERPROFILE
New-Item -Path $HOME/vimfiles -ItemType Directory
New-Item -Path $HOME/vimfiles/.cache -ItemType Directory

Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force
Copy-Item .\configSO\windows\_vimrc $HOME\_vimrc

New-Item $HOME\vimfiles\filetype.vim
Set-Content $HOME\vimfiles\filetype.vim 'if exists("did_load_csvfiletype")
  finish
endif
let did_load_csvfiletype=1

augroup filetypedetect
  au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
augroup END'

# Abra o vim e execute :PlugInstall
# cd C:\'Program Files (x86)'\Vim\vim82\vim.exe
# .\vim -c 'PlugInstall|q|CocInstall coc-json coc-tsserver coc-clangd coc-sh coc-ccls coc-cmake coc-pyright coc-r-lsp coc-html|q|q'
# Execute
# :CocInstall sql-language-server
