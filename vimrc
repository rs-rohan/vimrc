" My vimrc {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
" }

" Vundle Plugins {

set nocompatible    
filetype off                 
set wildmenu
set path+=**
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    Plugin 'editorconfig/editorconfig-vim'
    " Plugin 'elzr/vim-json'
    " Plugin 'mbbill/undotree'
    " Plugin 'alfredodeza/pytest.vim'
    " Plugin 'othree/html5.vim'
    Plugin 'flazz/vim-colorschemes'

    " Plugin 'anntzer/vim-cython'

    " Plugin 'petRUShka/vim-sage'

    " Plugin 'ncm2/ncm2'
    " Plugin 'roxma/nvim-yarp'
    " Plugin 'ncm2/ncm2-bufword'
    " Plugin 'ncm2/ncm2-path'


    Plugin 'VundleVim/Vundle.vim'
    Plugin 'rdnetto/YCM-Generator'
    Plugin 'neoclide/coc.nvim'

    " Plugin 'prabirshrestha/async.vim'
    " Plugin 'prabirshrestha/vim-lsp'

    Plugin 'jackguo380/vim-lsp-cxx-highlight'

    Plugin 'psf/black'
 
    " Plugin 'neoclide/coc.nvim', 'do': 'yarn install --frozen-lockfile'
    " Plugin 'neoclide/coc.nvim', 'tag': '*', 'branch': 'release'

    " Plugin 'Valloric/YouCompleteMe'
    " Bundle 'Shougo/neocomplete.vim'
    " Plugin 'Syntastic'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'scrooloose/nerdtree'
    Bundle 'rs-rohan/vim-nerdtree-tabs'

    Bundle 'airblade/vim-gitgutter'
    " Plugin 'itchyny/lightline.vim'
    Plugin 'j5shi/SearchComplete'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    " Plugin 'jupyter-vim/jupyter-vim'
    " Plugin 'szymonmaszke/vimpyter' "Vundle
    " Plugin 'idanarye/vim-vebugger'
    " Plugin 'vim-perl/vim-perl'
    Plugin 'google/vim-maktaba'
    Plugin 'google/vim-codefmt'
    Plugin 'lervag/vimtex'
    " Plugin 'vim-latex/vim-latex'
    Plugin 'google/vim-glaive'
    " Plugin 'powerline/powerline'
    Plugin 'vim-airline/vim-airline'
    " Bundle 'OmniSharp/omnisharp-vim'
    " Plugin 'fsharp/vim-fsharp'
    Bundle 'LucHermitte/lh-vim-lib'
    Bundle 'LucHermitte/lh-brackets'

    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    """ Powerful folding plugin for C
    " Bundle 'LucHermitte/VimFold4C'
    """ Use with care
    " Plugin 'python-mode/python-mode'
    " Plugin 'pangloss/vim-javascript'
    " Plugin 'mxw/vim-jsx'
    " Plugin 'gabrielelana/vim-markdown'
    " Plugin 'JamshedVesuna/vim-markdown-preview'
    "" Comfort mode plugin
    Plugin 'junegunn/goyo.vim'  " :Goyo
    Plugin 'easymotion/vim-easymotion' " <leader><leader>w or b
    " Plugin 'WolfgangMehner/vim-plugins'
    " Plugin 'fatih/vim-go'
    " Plugin 'vim-perl/vim-perl'
    " Plugin 'gootorov/q-sharp.vim'
    Plugin 'w0rp/ale'

    " Browser edit
    Plugin 'glacambre/firenvim'

    Plugin 'rust-lang/rust.vim'

call vundle#end()           
" }

" Backup and Undodir {
" try 
" let g:cwd = getcwd()
" let g:dirname = split(g:cwd, '/')[-1]
" let g:dirname_2 = split(g:cwd, '/')[-2]

"silent exec !mkdir -p ./.vim/backups ./.vim/directory ./.vim/undodir

" if (isdirectory("./.vim") == 0) && (g:dirname != ".vim") && (g:dirname_2 !=".vim") 
"     " silent call mkdir("./.vim",'p')
"     silent call mkdir("./.vim/backups",'p')
"     silent call mkdir("./.vim/directory",'p')
"     silent call mkdir("./.vim/undodir",'p')
"     " elseif (isdirectory("./.vim") == 1) 
"     "  silent call mkdir("./.vim/backups",'p')
"     "  silent call mkdir("./.vim/directory",'p')
"     "  silent call mkdir("./.vim/undodir",'p')
" endif
" catch

" endtry
" }

" Global plugin settings {

let maplocalleader=","
let g:usemarks=0

if !has("nvim")
    silent execute "set <M-f>=\ef"
    " silent execute "set <M-t>=\et"
    silent execute "set <M-y>=\ey"
endif

" Youcompleteme config  {
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_auto_trigger = 1
" let g:ycm_python_binary_path = "/usr/bin/python3"

" }

" coc.vim {

let g:lsp_cxx_hl_use_text_props = 1

" }

" CPP syntax config {
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_scope_highlight = 1
" }

" Gitgutter, Ale, Syntastic, Nerdtree config {

"let vim_markdown_preview_github = 1
let NERDTreeShowHidden=1
" let NERDTreeMapOpenInTab='<CR>'
" let g:nerdtree_tabs_open_on_console_startup = 1
let g:pymode_python = 'python3'

" let g:gitgutter_highlight_lines = 0
" let g:netrw_altv = 1
" let g:netrw_browse_split = 4
"
" let g:syntastic_python_checkers=['python3 -m flake8', 'python3 -m pylama', 'python3 -m pylint', 'python3 -m pep8']
 " let g:syntastic_python_checkers = ['python3']
" let g:syntastic_python_python_exec = '/usr/bin/env python3'

" let g:syntastic_python_flake8_exec = '/usr/bin/python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']



" if exists('&signcolumn')  " Vim 7.4.2201
"   set signcolumn=yes
" else
"   let g:gitgutter_sign_column_always = 1
" endif


let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'M'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'
"
"



let g:ale_cpp_ccls_executable = 'ccls'
let g:ale_cpp_ccls_init_options = {}
let g:ale_cpp_clang_executable = 'clang++'
let g:ale_cpp_clang_options = '-std=gnu++2a -Wall'
let g:ale_cpp_clangcheck_executable = 'clang-check'
let g:ale_cpp_clangcheck_options = ''
let g:ale_cpp_clangd_executable = 'clangd'
let g:ale_cpp_clangd_options = ''
let g:ale_cpp_clangtidy_checks = []
let g:ale_cpp_clangtidy_executable = 'clang-tidy'
let g:ale_cpp_clangtidy_extra_options = ''
let g:ale_cpp_clangtidy_options = ''
let g:ale_cpp_clazy_checks = ['level1']
let g:ale_cpp_clazy_executable = 'clazy-standalone'
let g:ale_cpp_clazy_options = ''
let g:ale_cpp_cppcheck_executable = 'cppcheck'
let g:ale_cpp_cppcheck_options = '--enable=style'
let g:ale_cpp_cpplint_executable = 'cpplint'
let g:ale_cpp_cpplint_options = ''
let g:ale_cpp_cquery_cache_directory = '/home/rohan/.cache/cquery'
let g:ale_cpp_cquery_executable = 'cquery'
let g:ale_cpp_flawfinder_executable = 'flawfinder'
let g:ale_cpp_flawfinder_minlevel = 1
let g:ale_cpp_flawfinder_options = ''
let g:ale_cpp_gcc_executable = 'gcc'
let g:ale_cpp_gcc_options = '-std=gnu++2a -Wextra'



let g:ale_c_ccls_executable = 'ccls'
let g:ale_c_ccls_init_options = {}
let g:ale_c_clang_executable = 'clang'
let g:ale_c_clang_options = '-std=gnu17 -Wall'
let g:ale_c_clangd_executable = 'clangd'
let g:ale_c_clangd_options = ''
let g:ale_c_clangtidy_checks = []
let g:ale_c_clangtidy_executable = 'clang-tidy'
let g:ale_c_clangtidy_extra_options = ''
let g:ale_c_clangtidy_options = ''
let g:ale_c_cppcheck_executable = 'cppcheck'
let g:ale_c_cppcheck_options = '--enable=style'
let g:ale_c_cquery_cache_directory = '/home/rohan/.cache/cquery'
let g:ale_c_cquery_executable = 'cquery'
let g:ale_c_flawfinder_error_severity = 6
let g:ale_c_flawfinder_executable = 'flawfinder'
let g:ale_c_flawfinder_minlevel = 1
let g:ale_c_flawfinder_options = '-std=gnu17'
let g:ale_c_gcc_executable = 'gcc'
let g:ale_c_gcc_options = '-std=gnu17 -Wextra'


 
" let g:ale_python_flake8_use_global = 1
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options  = '-m flake8'
" let g:ale_python_pylint_executable = 'pyenv run pylint'

" let g:ale_python_pylint_executable = 'python3' 

let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_enter = 1
let g:ale_lint_delay = 5

let g:ale_linter_aliases = {'h' : 'c' }

" }

" Vimtex config {
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_quickfix_mode = 0
" }


autocmd FileType help wincmd L
" }

" Key Mappings {

map Y y$

" nnoremap <localleader>44 :vert term<cr><c-w>r
nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
nnoremap <localleader>zv :vsplit ~/.zshrc<cr>
nnoremap <localleader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <localleader>sv :source $MYVIMRC<cr>
nnoremap <localleader>' viw<esc>a'<esc>hbi'<esc>lel
inoremap jk <esc>
inoremap kj <esc>
nnoremap <M-f> :YcmCompleter FixIt<cr>
" nnoremap <M-t> :terminal<cr> DANGEROUS
nnoremap <M-y> gt<cr>
inoremap \\w <esc><leader><leader>w
inoremap <c-b> <esc>:Commentary<cr>i
inoremap `` <esc>gt i
nnoremap `` gt
" inoremap ~~ <esc>gT i
nnoremap ~~ gT
nnoremap <c-b> :Commentary<cr>
" nnoremap <localleader>o :NERDTreeToggle<cr>
nnoremap <localleader>o :NERDTreeTabsToggle<cr>
inoremap <localleader>o <esc>:NERDTreeTabsToggle<cr>i
" inoremap <localleader>o <esc>:NERDTreeToggle<cr>i
" inoremap <c-x> <esc>:UndotreeToggle<cr>i
" nnoremap <c-x> :UndotreeToggle<cr>
nnoremap <f2> :UndotreeToggle<cr>
nnoremap <f5> :make <cr>
nnoremap <f6> :command! Latex execute "!pdflatex " . expand('%')
nnoremap <f6> :command! Latex execute "!pdflatex %<cr>
nnoremap <localleader>g :YcmCompleter GoTo<cr>
nnoremap <localleader>d :YcmCompleter GetDoc<cr>
nnoremap <localleader>t :YcmCompleter GetType<cr>
vnoremap <C-c> "+y
inoremap <C-v> <esc>"+pa
nnoremap <C-v> i<esc>"+pa<esc>
inoremap <localleader>s <esc>:w<cr>i
vnoremap <c-d> "+d
" nmap <silent> <F7><esc>:cprevious<cr>
" nmap <silent> <F8><esc>:cnext<cr>
" tnoremap <Esc> <C-\><C-n>
tnoremap ``  <C-\><c-n>
nnoremap <localleader>44 :vert term<cr>
nnoremap <localleader>55 :term<cr>


nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>
nnoremap <silent> _d :.!perl -MO=Deparse 2>/dev/null<cr>
vnoremap <silent> _d :!perl -MO=Deparse 2>/dev/null<cr>

nnoremap <localleader>m :tabedit .vim/vimrc<cr>

" }

" Ultisnips config {
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsExpandTrigger="<nop>"
let g:ulti_expand_or_jump_res = 0
function! <SID>ExpandSnippetOrReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=<SID>ExpandSnippetOrReturn()<CR>" : "\<CR>"
" }

" Vim options {
set title
set colorcolumn=80

set cmdheight=2
" set expandtab
" set tabstop=8
" set shiftwidth=8
" set softtabstop=8
set tabstop=4
set shiftwidth=4
" set softtabstop=4
set relativenumber
set expandtab
set foldenable

" set foldmethod=indent
set backupdir=~/.vim/backups,./backups,../backups
set directory=~/.vim/directory,./directory,../directory
set undodir=~/.vim/undodir,./undodir,../undodir

" set path+=/usr/local/cuda-10.2/targets/x86_64-linux/include
set path+=/usr/local/cuda/include
set path+=/usr/include

set splitright
set splitbelow

set spelllang=en
set spell

" }

" autocmd config {
autocmd FileType perl set autoindent|set smartindent
set incsearch
autocmd FileType perl set showmatch
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
" au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'  >/dev/null  2>/dev/null
" au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'




" autocmd BufNewFile,BufRead *.cu set filetype=cpp


" " Run current file
" nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
" nnoremap <buffer> <silent> <localleader>I :JupyterImportThisFile<CR>

" " Change to directory of current file
" nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" " Send a selection of lines
" nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
" nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
" nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
" vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

" nnoremap <buffer> <silent> <localleader>U :JupyterUpdateShell<CR>

" " Debugging maps
" nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>




" hi SpellBad ctermfg=173 ctermbg=214 guifg=#131312 guibg=#324523
" hi SpellCap ctermfg=213 ctermbg=524 


" autocmd FileType perl setlocal equalprg=perltidy\ -st\ -enc=utf8\ -bl

augroup autoformat_settings
    " autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto,cuda AutoFormatBuffer clang-format
    " autocmd FileType dart AutoFormatBuffer dartfmt
    autocmd FileType go AutoFormatBuffer gofmt
    " autocmd FileType gn AutoFormatBuffer gn
    autocmd FileType python AutoFormatBuffer black
    " autocmd FileType javascript AutoFormatBuffer js-beautify
    " javascript

    " autocmd FileType html,css,json AutoFormatBuffer js-beautify
    " autocmd FileType css,json AutoFormatBuffer js-beautify
    " autocmd FileType java AutoFormatBuffer google-java-format
    " autocmd FileType python AutoFormatBuffer yapf
    " autocmd FileType perl AutoFormatBuffer perltidy\ -st
augroup END


" autocmd BufNewFile,BufRead *.qs set syntax=cs

" }

" Fold options {

let b:fold_options = {'fold_blank': 0, 'fold_includes': 0, 'max_foldline_length': 'win', 'merge_comments' : 0, 'show_if_and_else': 0, 'strip_namespaces': 1, 'strip_template_arguments': 1 ,}

" }

" Miscellaneous {
" set background=dark
" set t_Co=256
" colorscheme PaperColor
colorscheme badwolf
" colorscheme good
" colorscheme molokai_dark
" colorscheme eldar
" colorscheme solarized
" colorscheme dracula

" colorscheme random
" colorscheme smarties
" colorscheme badwolf
if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! MakeTags !ctags -R .
endif

syntax on
filetype plugin indent on   




" nnoremap <c-f> :!cd ../build && make <cr>

if filereadable(expand('./.vim/vimrc' ))
    source ./.vim/vimrc
endif




let &runtimepath.=','.$PLUMED_VIMPATH
" nnoremap <localleader>px :set syntax=plumed<cr>


" profile start profile.log
" profile func *
" profile file *
" profile pause
"
" }
