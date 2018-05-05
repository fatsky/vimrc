set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set nu
set guifont=consolas
syntax on
autocmd InsertLeave * se nocul
autocmd InsertLeave * se cul
set showcmd
set cmdheight=1
set whichwrap+=<,>,h,l
set scrolloff=3
set novisualbell
set laststatus=1
set foldenable
set foldmethod=manual
set nocompatible
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8


"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: ") 
        call append(line(".")+2, "\# ") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: ") 
        call append(line(".")+2, "    > Mail: ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include <cstdio>")
        call append(line(".")+7, "#include <iostream>")
        call append(line(".")+8, "")
	call append(line(".")+9, "using namespace std;")
	call append(line(".")+10, "")
	call append(line(".")+11, "int main(){")
	call append(line(".")+12, "	return 0;")
	call append(line(".")+13, "}")	
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
	call append(line(".")+8, "int main(){")
	call append(line(".")+9, "return 0;")
	call append(line(".")+10, "}")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

" 映射全选+复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" 选中状态下 Ctrl+c 复制


"C，C++ 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    endif
endfunc

"C,C++的调试
map <F6> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc



set autoread
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
set completeopt=preview,menu
filetype plugin on
set clipboard+=unnamed 
set autowrite
set noeb
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set nobackup
set noswapfile
set ignorecase
set hlsearch
set incsearch
set gdefault
set scrolloff=3



if len(filter(range(argc()), 'getfsize(argv(v:val))>pow(1024,3)*7')) > 0   
	echomsg "Hey! Vim will quit VLC!"
	sleep 3
	cquit!
	endif
	autocmd BufReadPre * if getfsize(expand("<afile>"))>pow(1024,3)*7|echomsg "Hey! Vim will quit VLC"|sleep 3|cquit!|endif




