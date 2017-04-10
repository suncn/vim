set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
" set rtp+=$HOME/vimfiles/bundle/Vundle.vim/ 
" call vundle#begin('$USERPROFILE/vimfiles/bundle/')
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'voronianski/oceanic-next-color-scheme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/mattn/emmet-vim.git'
Plugin 'https://github.com/mbbill/undotree.git'
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/vim-scripts/vim-cursorword.git'
Plugin 'https://github.com/godlygeek/tabular.git'
" Plugin 'https://github.com/moll/vim-bbye.git'
" Plugin 'https://github.com/vim-scripts/DoxygenToolkit.vim.git'
" Plugin 'https://github.com/jlanzarotta/bufexplorer.git'
" Plugin 'https://github.com/luochen1990/rainbow.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
" Plugin 'https://github.com/Yggdroot/indentLine.git'
Plugin 'https://github.com/maksimr/vim-jsbeautify.git'
" Plugin 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'https://github.com/rking/ag.vim.git'
Plugin 'https://github.com/dyng/ctrlsf.vim.git'
" Plugin 'https://github.com/junegunn/goyo.vim.git'
Plugin 'https://github.com/plasticboy/vim-markdown.git'
Plugin 'https://github.com/iamcco/markdown-preview.vim.git'
Plugin 'https://github.com/jiangmiao/auto-pairs.git'
" Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/vim-scripts/AuthorInfo.git'  " 
Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'
Plugin 'elzr/vim-json'
Plugin 'jwalton512/vim-blade'
" Plugin 'https://github.com/Valloric/MatchTagAlways.git'
Plugin 'https://github.com/gregsexton/MatchTag.git'
" Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/pangloss/vim-javascript.git'
Plugin 'mxw/vim-jsx'
Plugin 'https://github.com/FooSoft/vim-argwrap.git'
Plugin 'https://github.com/Shutnik/jshint2.vim.git'
Plugin 'https://github.com/digitaltoad/vim-jade.git'
Plugin 'https://github.com/briancollins/vim-jst.git'
" Plugin 'https://github.com/skywind3000/asyncrun.vim.git'
" Plugin 'https://github.com/chemzqm/wxapp.vim.git'
Plugin 'https://github.com/airblade/vim-gitgutter.git'

" Plugin 'ternjs/tern_for_vim'
" Plugin 'ervandew/supertab'

" Plugin 'https://github.com/nono/jquery.vim.git'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'trailing-whitespace'
" Plugin 'https://github.com/Shougo/unite.vim.git'
" Plugin 'https://github.com/scrooloose/syntastic.git'
" Plugin 'https://github.com/gcmt/wildfire.vim.git'
" Plugin 'https://github.com/jlanzarotta/colorSchemeExplorer.git'
" Vundle
Plugin 'jbgutierrez/vim-babel'
" Plugin 'mattn/webapi-vim'
" Leaderf / CtrlP
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'Yggdroot/LeaderF'
Plugin 'https://github.com/heavenshell/vim-jsdoc'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" 解决乱码问题
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
"
" 解决Windows目录问题
" autocmd BufEnter * silent! lcd %:p:h
" set autochdir
"
" 退格键可用
set backspace=indent,eol,start

" 搜索忽略大小写
set ic

 " GitGutterPreviewHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk

" 设置字体和字体大小
set gfn=Consolas:h14
set gfn=Monaco:h16

"
" 设置主题
" syntax on
set background=dark
let g:colors_name = "base16-oceanicnext"


" 显示行号
set nu
"
"不自动换行
set nowrap

" 不生成交换文件和备份文件
set noswapfile               " 不生成交换文???
set nobackup                 " 不生成备份文???


" 设置通用缩进策略
set shiftwidth=2
set tabstop=2
set smarttab
set softtabstop=2
set tw=800
set expandtab

" 设置leader
let mapleader=","

" 将ESC键映射为jk键                                       
inoremap jk <Esc>  

nmap <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>

" javascript高亮
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" Windows Python36 
" if  has('python3') == 0
" 	set pythonthreedll=C:/Users/yingsong.li/Python36/python36.dll
" endif
"
" TagBar              tags标签浏览
" let g:tagbar_ctags_bin='C:/Users/yingsong.li/ctags58/ctags.exe' 

let g:tagbar_width=30
let g:tagbar_sort = 0                          " 关闭排序     [也就是按标签本身在文件中的位置排序]
let g:tagbar_show_linenumbers = 1             " 显示行号     [使用全局关于行号的默认配置]
let g:tagbar_autopreview = 0                   " 开启自动预???[随着光标在标签上的移动，顶部会出现一个实时的预览窗口]
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds': ['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0', 'i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0', 'p:protocols:0:0', 'r:records:0:0'], 'sro': '.'}
nmap <leader>t :TagbarToggle<cr><c-w><c-l>

" JsBeautify
nmap <leader>j1 :call JsBeautify()<CR>
nmap <leader>j2 :call JsonBeautify()<CR>
nmap <leader>j3 :call JsxBeautify()<CR>
nmap <leader>j4 :call HtmlBeautify()<CR>
nmap <leader>j5 :call CSSBeautify()<CR>

" LeaderF
nmap <leader>f :Leaderf<CR>

" NERDCOmmeter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'javascript': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" JsDoc
nmap <leader>d :JsDoc<CR>

" Ctrlp && Ctrlp-funky
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
nnoremap <Leader>F :CtrlPFunky<Cr>

" Ag
let g:ag_working_path_mode="r"
set laststatus=2

" GitGutterPreviewHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk

" airline
let g:airline#extensions#tabline#enabled = 1

" ycm
let g:ycm_add_preview_to_completeopt = 1 
let g:ycm_autoclose_preview_window_after_completion = 1

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/ 
