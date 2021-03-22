set nocompatible
set encoding=utf-8
" O plugin executa automaticamente 'filetype plugin indent on' e 'syntax enable'
" Os plugins e instalações abaixo irão construir a interface do gvim, esquema
" de cores e fontes.
call plug#begin('~/vimfiles/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chrisbra/csv.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pprovost/vim-ps1'
call plug#end()
let g:molokai_original = 1
let g:rehash256 = 1
let g:airline_theme='molokai'
colorscheme onehalfdark
let g:lightline = { 'colorscheme': 'onehalfdark' }
set guifont=Consolas:h12
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Para o powershell
let g:ps1_nofold_blocks = 1
let g:ps1_nofold_sig = 1
"""""""""""""""""""""""""""

set display+=lastline
set linebreak
set scrolloff=1
set wrap

" Interface do usuário
set number          " mostra os números das linhas na barra lateral.
filetype indent on  " habilita a verificação do tipo de arquivo e carregará as regras de recuo correspondentes a este tipo
set cursorline      " selecione a linha atualmente sob o cursor.
set laststatus=2    " sempre exibe a barra de status.
set wildmenu        " exibe as opções completas da guia da linha de comando como um menu.
set tabpagemax=50   " número máximo de páginas de guia que podem ser abertas na linha de comando.
set ruler           " sempre mostra a posição do cursor.
"set relativenumber  " mostra o número da linha na linha atual e os números relativos em todas as outras linhas.
set noerrorbells    " desativa o bipe em caso de erros.
set visualbell      " habilita aviso de erro visual (pisca a tela)
set mouse=a         " habilita o mouse para rolar e redimensionar.

" Verificação ortográfica
" fonte: http://ftp.vim.org/vim/runtime/spell/pt.*.spl
set spell            " ativa a verificação ortográfica.
set spelllang=pt_br  " determina a lingua da verificação ortográfica

" Comportamento e indentação
set autoindent     " indentação automática
set expandtab      " transforma tab em espaço 
set shiftround     " ao deslocar as linhas, arredonde o recuo para o múltiplo mais próximo de shiftwidth.
set shiftwidth=2   " ao deslocar indent 2 espaços.
set smarttab       " insere o número tabstop de espaços quando a tecla tab é pressionada.
set tabstop=2      " recue usando 2 espaços.
set softtabstop=2  " deleta 2 espaços com o backspaces, quando contínuos.

" Comportamento na busca
set hlsearch    " habilita o realce nas palavras encontradas
set ignorecase  " ignora maiúsculas e minúsculas ao pesquisar.
set incsearch   " pesquisa incremental que mostra correspondências parciais.
set smartcase   " alterna automaticamente a pesquisa para diferencia maiúsculas de minúsculas quando a consulta de pesquisa contém uma letra maiúscula.

" Performace
set complete-=i " limita os arquivos pesquisados para autocompletar.
set lazyredraw  " não atualiza a tela durante a execução da macro e do script.

" Desdobramento
set foldmethod=indent " obra baseada nos níveis de indentação
set foldnestmax=3     " dobre somente até três níveis aninhados.
set nofoldenable      " desativa a dobradura por padrão.

" Outras opções
set autoread                        " releia automaticamente os arquivos se não forem modificados dentro do Vim.
set backspace=indent,eol,start      " permite retrocesso sobre recuo, quebras de linha e início de inserção.
set backupdir=~/vimfiles/.cache/vim " diretório para armazenar arquivos de backup.
set dir=~/.cache/vimfiles/vim       " diretório para armazenar arquivos de troca.
set formatoptions+=j                " exclui caracteres de comentário ao unir linhas.
set hidden                          " oculte arquivos em segundo plano em vez de fechá-los.
set history=1000                    " aumenta o limite de desfazer
set nomodeline                      " ignora as linhas de modo do arquivo; em vez disso, use as configurações do vimrc.
set noswapfile                      " desativa os arquivos de troca.
set nrformats-=octal                " interpreta octal como decimal ao incrementar números.
set wildignore+=.pyc,.swp           " ignora os arquivos que correspondem a esses padrões ao abrir arquivos com base em um padrão glob.
set showmode                        " mostra na parte inferior se ele está no modo de comando ou modo de inserção.
set showcmd                         " O comando atualmente digitado será exibido na parte inferior do modo de comando.
