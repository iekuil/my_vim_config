call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

"修改配置文件后自动刷新"
autocmd BufWritePost $MYVIMRC source $MYVIMRC

 "不兼容vi命令"
set nocompatible

"语法高亮"
syntax on 

"启动时不显示欢迎页面"
set shortmess+=I

"侧边显示行号"
set number
"侧边显示相邻行的相对偏移"
set relativenumber
"用横线标注出光标所在行"
set cursorline

"显示状态栏"
set laststatus=2
"无插件：格式化状态栏输出"
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"lightline的状态栏设置"
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'gitbranch': '',
      \   'filename': '%<%f',
      \   'filetype': '%Y',
      \ },
      \ 'component_function': {
      \   'lineinfo': 'LightlineLineInfo'
      \ },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'tabline_separator': { 'left': '', 'right': '' },
      \ 'tabline_subseparator': { 'left': '', 'right': '' },
      \ 'tabline': { 'left': [ [ 'tabs' ] ], 'right': [ [ 'close' ] ] }
      \ }

function! LightlineLineInfo()
  let line = line('.')
  let total_lines = line('$')
  return line . '/' . total_lines
endfunction


"状态栏显示光标位置信息"
set ruler

"修正vim删除、退格行为"
set backspace=indent,eol,start

"隐藏默认的提示，可以在不保存当前buffer的情况下，切换到其他的buffer编辑其他文件"
set hidden

"搜索时不区分大小写"
set ignorecase
"当搜索字符串存在大写时，大小写敏感，需要开启ignorecase才能生效"
set smartcase
"启用增量搜索（实时搜索）"
set incsearch

"不再使用Q进入Ex模式"
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

"关闭错误提示音"
set noerrorbells visualbell t_vb=
set tm=500


"在normal模式中禁用方向键"
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

"在insert模式中禁用方向键"
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

"文件采用的编码"
set fileencoding=utf-8
"设置屏幕显示的编码"
set termencoding=utf-8
"内部处理数据使用的编码"
set encoding=utf-8

"高亮匹配括号"
set showmatch

"设置一个tab的宽度为四个空格"
set tabstop=4
"设置自动缩进的宽度"
set shiftwidth=4
"开启自动继承上一行的缩进"
set autoindent
"按下tab时，插入等长度的空格"
set expandtab

"开启paste模式，防止粘贴时打乱对齐"
set paste

"标记出tab和空格"
set listchars=tab:>-,trail:-

"文件类型检测"
filetype plugin indent on

"不生成swp文件"
set noswapfile
"命令模式下，按下tab自动补全"
set wildmenu

"只有遇到空格等指定符号时才进行折行"
set linebreak
"文件监视，编辑过程中如果文件被改动，发出提示"
set autoread

"下移光标时，光标和屏幕底部保持距离"
set scrolloff=7
"展示所处的mode"
set showmode
"展示已输入的部分命令
set showcmd


