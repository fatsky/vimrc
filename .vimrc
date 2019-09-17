set number
"设置行号
"colorscheme hybrid
"设置主题
set hlsearch
"设置高亮搜索
"set foldmethod=indent
"设置折叠模式
set nocompatible
"不与vi兼容
set showmode
"在底部显示，当前处于命令模式还是插入模式
set showcmd
"命令模式下，在底部显示，之前键入的命令。
set encoding=utf-8
"使用utf-8编码
filetype indent on
"开启文件类型检查，并且载入与该类型对应的缩进规则。
set autoindent
"按下回车键后，下一行的缩进自动与上一行保持一致。
set tabstop=4
"Tab键的空格数
set shiftwidth=4
"set cursorline
"光标当前所在行高亮
set scrolloff=3
"垂直滚动时，光标距离顶部/底部的位置
set ruler
"在状态栏显示光标的当前位置
"set nobackup
"不创建备份文件
"set noswapfile
"不创建交换文件
set undofile
"保留撤销历史
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo//
"设置备份文件、交换文件、操作历史文件的保存位置。
set noerrorbells
"出错时不要发出响声。
set history=10000
"vim需要记住多少次历史操作
set autoread
"打开文件监视，如果在编辑过程中文件发生外部改变，就会发出提示。
set wildmenu
set wildmode=longest:list,full
"命令模式下，底部操作指令按下Tab键自动补全


noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"分窗口

"inoremap jj <Esc>`^
"用"jj"替代<Esc>

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
"inoremap < <><Esc>i
"自动补全括号

syntax on
"语法高亮
colorscheme desert
"主题
set tabstop=4
"Tab的缩进为4]
