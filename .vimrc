" main configeration"
" """"""""""""""""""""""""
let mapleader=";"
nnoremap <leader>lw <C-W>l
nnoremap <leader>kw <C-W>k
nnoremap <leader>hw <C-W>h
nnoremap <leader>jw <C-W>j
" 返回跳转的位置
nnoremap <leader>gb <C-O> 
" 沿着经过的标签列表向回跳转
nnoremap <leader>gt <C-T>
inoremap jk <esc>
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nu
set history=200
"set cursorline
"set cursorcolumn
set hlsearch
set nofoldenable
set linespace=-1
set nowrap
set background=dark
 """"""""""""""""""""""""""""
 " split window setting
 """"""""""""""""""""""""""""
 nmap w= :resize +3<CR>
 nmap w- :resize -3<CR>
 nmap w, :vertical resize -3<CR>
 nmap w. :vertical resize +3<CR>
 nmap <F9> <esc>:!ctags -R *<CR>


syntax on
syntax enable
set nocompatible  
"colorscheme molokai
colorscheme monokai
"colorscheme greens
"colorscheme desert


filetype on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'  "status bar
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'            "文件树插件
Plugin 'majutsushi/tagbar',{ 'on': 'TagbarToggle' }
Plugin 'winmanager'
Plugin 'Xuyuanp/nerdtree-git-plugin'    "显示文件的Git增删状态
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()     
Bundle 'Valloric/YouCompleteMe'
filetype plugin indent on

"""""""""""""""""""""""""""""""""
" ycm setting"
"""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf=0
let g:ycm_key_invoke_completion = '<C-/>'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_semantic_triggers = {'c' : ['->', '    ', '.', ' ', '(', '[', '&'],'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],'perl' : ['->', '::', ' '],
\     'php' : ['->', '::', '.'],
\     'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
\     'ruby' : ['.', '::'],
\     'lua' : ['.', ':']
\ }

 """"""""""""""""""""""""""""
 " nerdtree  setting
 """"""""""""""""""""""""""""
 " Ctrl+N 打开关闭
 map <C-n> :NERDTreeToggle<CR>
 " 当不带参数时打开vim时自动加载项目树
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 " 当所有文件关闭时关闭项目树窗格
 "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 " 不显示这些文件
 let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
 " 不显示项目树上额外的信息、例如帮助、提示等
 let NERDTreeMinimalUT=1
 let NERDTreeShowBookmarks=1
 let NERDTreeShowHidden=1

 let g:NERDTreeIndicatorMapCustom = {
     \ "Modified"  : "✹",
     \ "Staged"    : "✚",
     \ "Untracked" : "✭",
     \ "Renamed"   : "➜",
     \ "Unmerged"  : "═",
     \ "Deleted"   : "✖",
     \ "Dirty"     : "✗",
     \ "Clean"     : "✔︎",
     \ "Unknown"   : "?"
     \ }
 """"""""""""""""""""""""""""

 """""""""""""""""""""""""""
 "   tagbar setting
 """""""""""""""""""""""""""
 nmap tb :TagbarToggle<CR>
 let g:tagbar_autofocus = 1
 let g:tagbar_ctags_bin = '/usr/bin/ctags'
 let g:tagbar_width = 30
 let g:tagbar_left = 1
 autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

 """""""""""""""""""""""""""
 "   nerdcommenter setting
 """""""""""""""""""""""""""
 let g:NERDSpaceDelims=1



" """""""""""""""""""""""""""
" "   taglist setting
" """""""""""""""""""""""""""
" nmap tt :TlistToggle<CR>
" let Tlist_Show_One_File=1
" let Tlist_Exit_OnlyWindow=1
" let Tlist_Ctags_Cmd = '/usr/bin/ctags'
" let Tlist_File_Fold_Auto_Close=1
" let Tlist_Show_Menu=1
" let Tlist_Use_Right_Window=1

 """""""""""""""""""""""""

 """"""""""""""""""""""""""
 "  winManager setting
 """""""""""""""""""""""""
"let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:winManagerWindowLayout='NERDTree|TagList'
"let g:NERDTree_title='NERDTree'
" function! NERDTree_Start()
"     exec 'NERDTree'
" endfunction
" function! NERDTree_IsValid()
"     return 1
" endfunction
" nmap <silent> wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>
" 
" """""""""""""""""""""""""
" map <F5> :call CompileRunGcc()<CR>
" func! CompileRunGcc()
"     exec "w"
"     exec "!gcc % -o %<"
"     exec "! ./%<"
" endfunc




if exists('$TMUX')
    set term=screen-256color
endif
