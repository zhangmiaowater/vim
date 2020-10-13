"wget https://raw.githubusercontent.com/zmwater/vim/master/vimrc -O ~/.vimrc
""""""""""""""""""""""""""""""""""""
" settings
""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on " 自动语法高亮
filetype plugin indent on " 文件类型检测 该类型相关的插件 该类型文件的自动缩进
set number " 显示行号
set ruler " 打开状态栏标尺
set expandtab " 缩进用空格表示
set tabstop=4 " 设定 tab 长度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set autoindent " 自动缩进 
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 删除键无法使用问题
set nowrap " 禁止自动换行
set nobackup " 禁止备份
set noswapfile " 不产生交换文件
set fileformat=unix " 以unix格式存储文件
set fileformats=unix " 全局文件格式类型
set encoding=utf-8 " vim内部使用的字符编码
set fileencodings=utf-8 " 编辑当前文件及保存时候的字符编码
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set magic " 设置魔术
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ " 设置在状态行显示的信息

" Smart way to move between windows 灵敏的转换窗口
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch tab 切换标签快捷键
map <C-UP> :tabm -1<cr>
map <C-DOWN> :tabm +1<cr>
map <C-LEFT> :tabp<cr>
map <C-RIGHT> :tabn<cr>
map ;1 :tabn 1<cr>
map ;2 :tabn 2<cr>
map ;3 :tabn 3<cr>
map ;4 :tabn 4<cr>
map ;5 :tabn 5<cr>
map ;6 :tabn 6<cr>
map ;7 :tabn 7<cr>
map ;8 :tabn 8<cr>
map ;9 :tabn 9<cr>
map ;0 :tabn 10<cr>
map ;;1 :tabn 11<cr>
map ;;2 :tabn 12<cr>
map ;;3 :tabn 13<cr>
map ;;4 :tabn 14<cr>
map ;;5 :tabn 15<cr>
map ;;6 :tabn 16<cr>
map ;;7 :tabn 17<cr>
map ;;8 :tabn 18<cr>
map ;;9 :tabn 19<cr>
map ;;0 :tabn 20<cr>

""""""""""""""""""""""""""""""""""""
" nerdtree
"git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
nmap <C-n> :NERDTreeToggle<cr>

""""""""""""""""""""""""""""""""""""
" tagbar
"git clone https://github.com/preservim/tagbar.git ~/.vim/pack/plugins/start/tagbar
""""""""""""""""""""""""""""""""""""
nmap <C-b> :TagbarToggle<cr>

""""""""""""""""""""""""""""""""""""
" nerdcommenter
"git clone https://github.com/preservim/nerdcommenter.git ~/.vim/pack/plugins/start/nerdcommenter
""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/pack/plugins/start/YouCompleteMe
""""""""""""""""""""""""""""""""""""
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

""""""""""""""""""""""""""""""""""""
" vim-go
"git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"

