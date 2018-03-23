set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nu
set hlsearch
set nofoldenable
set linespace=-1

 let mapleader=";"
 nnoremap <leader>lw <C-W>l
 nnoremap <leader>kw <C-W>k
 nnoremap <leader>hw <C-W>h
 nnoremap <leader>jw <C-W>j
 inoremap jk <esc>
 """"""""""""""""""""""""""""
 " split window setting
 """"""""""""""""""""""""""""
 nmap w= :resize +3<CR>
 nmap w- :resize -3<CR>
 nmap w, :vertical resize -3<CR>
 nmap w. :vertical resize +3<CR>

syntax on
syntax enable

set nocompatible  
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'            "文件树插件
Plugin 'kien/ctrlp.vim'             "全局搜索
Plugin 'Lokaltog/powerline',{'rtp': 'powerline/binding/vim/'}   "状态栏插件
Plugin 'Raimondi/delimitMate'            "括号 引号匹配
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'css_color.vim'
Plugin 'mattn/emmet-vim'
call vundle#end()     
filetype on



 """"""""""""""""""""""""""""
 " nerdtree  setting
 """"""""""""""""""""""""""""
 " Ctrl+N 打开关闭
 map <C-n> :NERDTreeToggle<CR>
 " 当不带参数时打开vim时自动加载项目树
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 " 当所有文件关闭时关闭项目树窗格
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
 " 不显示这些文件
 let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
 " 不显示项目树上额外的信息、例如帮助、提示等
 let NERDTreeMinimalUT=1
 """"""""""""""""""""""""""""




 """"""""""""""""""""""""""""
 " ctrlp  setting
 """"""""""""""""""""""""""""
 let g:ctrlp_working_path_mode = 'ra'
 set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip
 let g:ctrlp_custom_ignore = {'dir': '\v[\/].(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}
 """"""""""""""""""""""""""""

 """"""""""""""""""""""""""""
 " powerline  setting
 """"""""""""""""""""""""""""
 set guifont=Inconsolata\ for\ Powerline:h15
 let g:Powerline_symbols = 'fancy'
 set encoding=utf-8
 set t_Co=256
 set fillchars+=stl:\ ,stlnc:\
 set term=xterm-256color
 set termencoding=utf-8



 """"""""""""""""""""""""""""
 " ycm setting
 """"""""""""""""""""""""""""
  let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
  let g:ycm_collect_identifiers_from_tag_files = 1
  let g:ycm_seed_identifiers_with_syntax = 1
  let g:ycm_confirm_extra_conf=0
  let g:ycm_key_invoke_completion = '<C-/>'
  let g:ycm_semantic_triggers = {'c' : ['->', '    ', '.', ' ', '(', '[', '&'],'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],
  \     'perl' : ['->', '::', ' '],
  \     'php' : ['->', '::', '.'],
  \     'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \     'ruby' : ['.', '::'],
  \     'lua' : ['.', ':']
  \}

 """"""""""""""""""""""""""""
 "vim-indent-guides setting"
 """""""""""""""""""""""""""
 let g:indent_guides_enable_on_vim_startup=1
 let g:indent_guides_start_level=2
 let g:indent_guides_guide_size=1
 :nmap <silent> <Leader>g <Plug>IndentGuidesToggle
 let g:indent_guides_auto_colors = 1
 hi IndentGuidesOdd ctermbg=3
 hi IndentGuidesEven ctermbg=4

 """""""""""""""""""""""""""""""""""""""""""""""
 """"""""""""""""""""""""""""""""""""
 "vim-colors-solarized setting"
 """"""""""""""""""""""""""""""""""""
 let g:solarized_termcolors=256
 let g:solarized_contrast="normal"
 let g:solarized_visibility="normal"
" let g:solarized_termtrans=1
 """"""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
"molokai setting"
""""""""""""""""""""""""""""""""""""
let g:molokai_original=1
""""""""""""""""""""""""""""""""""""
 
  nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
filetype plugin indent on
if exists('$TMUX')
    set term=screen-256color
endif
