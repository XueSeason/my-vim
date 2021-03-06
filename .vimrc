let mapleader=";"
" 文件类型检测
filetype off
" 根据不同文件加载不同插件
filetype plugin on
" 开启实时搜索功能
set incsearch
" 开启自身命令行自动补全
set wildmenu
" 关闭兼容模式
set nocompatible
" 搜索时大小写不敏感
set ignorecase
" 开启语法高亮
syntax enable
" 允许配色方案替换默认方案
syntax on
" 代码配色
set background=dark
colorscheme hybrid
" 显示状态栏
set laststatus=2
" 显示光标位置
set ruler
" 开启行号
set number
" 高亮显示搜索结果
set hlsearch
" delete 配置增强
set backspace=2

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 制表符占用空格数
set tabstop=4
" 格式化时制表符占用空格数
set shiftwidth=2
" 连续空格视为制表符
set softtabstop=2

" 代码折叠
" set foldmethod=syntax

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" syntasitic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" emmet
let g:user_emmet_expandabbr_key = '<Tab>'

" JS Standard Style
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_standard_generic = 1
autocmd bufwritepost *.js silent !standard --fix %
set autoread

" js autocomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 样式插件
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
" 自动补全大括号
Plugin 'Raimondi/delimitMate'
" 语法高亮
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'isRuslan/vim-es6'
Plugin 'moll/vim-node'
" 自动补全
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
" 风格检测
Plugin 'scrooloose/syntastic'
" 文件树
Plugin 'scrooloose/nerdtree'
" HTML CSS
Plugin 'mattn/emmet-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
