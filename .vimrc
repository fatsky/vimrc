set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set whichwrap+=<,>,h,l
set nu
set smarttab
set nobackup
set shortmess=atI
set go=
syntax on
set ruler
set showcmd
set cmdheight=2
set scrolloff=5
set novisualbell
set laststatus=1
set foldenable
set foldmethod=manual
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8



set autoread
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
set completeopt=preview,menu


set nobackup
set noeb
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set noswapfile
set ignorecase
set hlsearch
set incsearch
set gdefault
set laststatus=2
filetype on
filetype plugin on
filetype indent on
set viminfo+=!
set iskeyword+=_,$,%,@,#,-
set wildmenu
set backspace=2
set report=0
set showmatch
set matchtime=1

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction
filetype plugin indent on
set completeopt=longest,menu
