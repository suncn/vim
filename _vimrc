set nocompatible              " be iMproved, required
filetype off                  " required

" 解决乱码问题
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

set showmatch               " 显示括号配对情况 

" 设置通用缩进策略 
set shiftwidth=4 
set tabstop=4 
set smarttab 
set softtabstop=4 
set tw=80

" 退格键可用
set backspace=indent,eol,start
" 将ESC键映射为两次j键                                       
inoremap jj <Esc>  

" webpack监听设置
" set backupcopy=yes

set noswapfile               " 不生成交换文???
set nobackup                 " 不生成备份文???

" 显示行号
set nu

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/ 
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

" set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
" call vundle#begin('/c/Users/yingsong.li/vimfiles/bundle/')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jnurmine/Zenburn'
" Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
" Plugin 'https://github.com/moll/vim-bbye.git'
" Plugin 'https://github.com/luochen1990/rainbow.git'
" Plugin 'https://github.com/Yggdroot/indentLine.git'
" Plugin 'https://github.com/maksimr/vim-jsbeautify.git'
" Plugin 'https://github.com/gorodinskiy/vim-coloresque.git'
" Plugin 'tomtom/tlib_vim'   
" Plugin 'https://github.com/iamcco/markdown-preview.vim.git'
" Plugin 'https://github.com/jiangmiao/auto-pairs.git'
" Plugin 'https://github.com/tpope/vim-repeat.git'
" Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'
Plugin 'https://github.com/leshill/vim-json.git'
" Plugin 'jwalton512/vim-blade'
Plugin 'https://github.com/gregsexton/MatchTag.git'
" Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/pangloss/vim-javascript.git'
Plugin 'mxw/vim-jsx'
" Plugin 'https://github.com/FooSoft/vim-argwrap.git'
" Plugin 'https://github.com/Shutnik/jshint2.vim.git'
" Plugin 'https://github.com/digitaltoad/vim-jade.git'
" Plugin 'https://github.com/briancollins/vim-jst.git'
" Plugin 'https://github.com/gcmt/wildfire.vim.git'
Plugin 'jbgutierrez/vim-babel'
" Plugin 'mattn/webapi-vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/neocomplete.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax enable
colorscheme Zenburn

" javascript高亮
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" TagBar              tags标签浏览
let g:tagbar_ctags_bin='/c/Users/yingsong.li/ctags58/ctags.exe'
let g:tagbar_width=40
let g:tagbar_sort = 0                          " 关闭排序     [也就是按标签本身在文件中的位置排序]
let g:tagbar_show_linenumbers = 1             " 显示行号     [使用全局关于行号的默认配置]
let g:tagbar_autopreview = 0                   " 开启自动预???[
let g:tagbar_autofocus = 1                 
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds': ['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0', 'i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0', 'p:protocols:0:0', 'r:records:0:0'], 'sro': '.'}
nmap <F4> :TagbarToggle<cr><c-w><c-l>

" CTRLP
let g:ctrlp_working_path_mode = 'ra'
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*.keep,*.DS_Store,*/.git/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|bower_components\|.sass-cache\|.git\|build'
" CtrlPFuncky
let mapleader=","
nnoremap <Leader>fu :CtrlPFunky<Cr> 
" narrow the list down with a word under cursor 
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"
nmap <leader>w :w<CR>

" markdown vim
let g:vim_markdown_folding_disabled = 1

" airline
let g:airline#extensions#tabline#enabled = 1
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
