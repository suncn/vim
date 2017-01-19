set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'crusoexia/vim-monokai'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'jnurmine/Zenburn'

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/mattn/emmet-vim.git'
Plugin 'https://github.com/mbbill/undotree.git'
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/vim-scripts/vim-cursorword.git'
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'https://github.com/godlygeek/tabular.git'
Plugin 'https://github.com/moll/vim-bbye.git'
Plugin 'https://github.com/vim-scripts/DoxygenToolkit.vim.git'
Plugin 'https://github.com/jlanzarotta/bufexplorer.git'
Plugin 'https://github.com/luochen1990/rainbow.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/Yggdroot/indentLine.git'
Plugin 'https://github.com/maksimr/vim-jsbeautify.git'
Plugin 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'https://github.com/rking/ag.vim.git'
Plugin 'https://github.com/dyng/ctrlsf.vim.git'
Plugin 'https://github.com/junegunn/goyo.vim.git'
Plugin 'https://github.com/plasticboy/vim-markdown.git'
Plugin 'https://github.com/iamcco/markdown-preview.vim.git'
Plugin 'https://github.com/jiangmiao/auto-pairs.git'
Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/vim-scripts/AuthorInfo.git'  " 需要修改fplugin为plugin
Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'
Plugin 'https://github.com/vim-airline/vim-airline-themes.git'
Plugin 'https://github.com/leshill/vim-json.git'
Plugin 'jwalton512/vim-blade'
" Plugin 'https://github.com/Valloric/MatchTagAlways.git'
Plugin 'https://github.com/gregsexton/MatchTag.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/pangloss/vim-javascript.git'
Plugin 'mxw/vim-jsx'
Plugin 'https://github.com/FooSoft/vim-argwrap.git'
Plugin 'https://github.com/Shutnik/jshint2.vim.git'
Plugin 'https://github.com/digitaltoad/vim-jade.git'
Plugin 'https://github.com/briancollins/vim-jst.git'
Plugin 'https://github.com/skywind3000/asyncrun.vim.git'
Plugin 'https://github.com/chemzqm/wxapp.vim.git'
" Plugin 'https://github.com/airblade/vim-gitgutter.git'
" Plugin 'https://github.com/ervandew/supertab.git'
" Plugin 'https://github.com/nono/jquery.vim.git'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'trailing-whitespace'
" Plugin 'https://github.com/Shougo/unite.vim.git'
" Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/gcmt/wildfire.vim.git'
" Plugin 'https://github.com/jlanzarotta/colorSchemeExplorer.git'
" Vundle
Plugin 'jbgutierrez/vim-babel'
Plugin 'mattn/webapi-vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'https://github.com/heavenshell/vim-jsdoc'


" 设置通用缩进策略
set shiftwidth=4


" All of your Plugins must be added before the following line
call vundle#end()            " required
"
" 设置主题
syntax on
colorscheme Zenburn

" 设置通用缩进策略
set shiftwidth=4
set tabstop=4
set smarttab
set softtabstop=4
set tw=80

" 显示行号
set nu

" 设置leader
let mapleader=","

" 将ESC键映射为jk键                                       
inoremap jk <Esc>  

" javascript高亮
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" TagBar              tags标签浏览
" let g:tagbar_ctags_bin='/c/Users/yingsong.li/ctags58/ctags.exe'
let g:tagbar_width=30
let g:tagbar_sort = 0                          " 关闭排序     [也就是按标签本身在文件中的位置排序]
let g:tagbar_show_linenumbers = 1             " 显示行号     [使用全局关于行号的默认配置]
let g:tagbar_autopreview = 0                   " 开启自动预???[随着光标在标签上的移动，顶部会出现一个实时的预览窗口]
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds': ['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0', 'i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0', 'p:protocols:0:0', 'r:records:0:0'], 'sro': '.'}
nmap <F4> :TagbarToggle<cr><c-w><c-l>

" JsBeautify
nmap <leader>j1 :call JsBeautify()<CR>
nmap <leader>j2 :call JsonBeautify()<CR>
nmap <leader>j3 :call JsxBeautify()<CR>
nmap <leader>j4 :call HtmlBeautify()<CR>
nmap <leader>j5 :call CSSBeautify()<CR>

" LeaderF
nmap <leader>f :Leaderf<CR>

" Ag

let g:ag_working_path_mode="r"

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
"
