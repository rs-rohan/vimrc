
set nocompatible    
filetype off                 
set wildmenu
set path+=**
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'editorconfig/editorconfig-vim'
    " Plugin 'elzr/vim-json'
    Plugin 'mbbill/undotree'
    " Plugin 'alfredodeza/pytest.vim'
    " Plugin 'othree/html5.vim'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'rdnetto/YCM-Generator'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Syntastic'
    Plugin 'tpope/vim-commentary'
    Plugin 'scrooloose/nerdtree'
    Bundle 'airblade/vim-gitgutter'
    " Plugin 'itchyny/lightline.vim'
    Plugin 'j5shi/SearchComplete'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    " Plugin 'idanarye/vim-vebugger'
    " Plugin 'vim-perl/vim-perl'
    Plugin 'google/vim-maktaba'
    Plugin 'google/vim-codefmt'
    Plugin 'google/vim-glaive'
    " Plugin 'powerline/powerline'
    Plugin 'vim-airline/vim-airline'
    Bundle 'OmniSharp/omnisharp-vim'
    " Plugin 'fsharp/vim-fsharp'
    Bundle 'LucHermitte/lh-vim-lib'
    Bundle 'LucHermitte/lh-brackets'
    """ Powerful folding plugin for C
    " Bundle 'LucHermitte/VimFold4C'
    """ Use with care
    Plugin 'python-mode/python-mode'
    " Plugin 'pangloss/vim-javascript'
    " Plugin 'mxw/vim-jsx'
    " Plugin 'gabrielelana/vim-markdown'
    " Plugin 'JamshedVesuna/vim-markdown-preview'
    "" Comfort mode plugin
    " Plugin 'junegunn/goyo.vim'  " :Goyo
    Plugin 'easymotion/vim-easymotion' " <leader><leader>w or b
    " Plugin 'WolfgangMehner/vim-plugins'
    " Plugin 'fatih/vim-go'
    Plugin 'vim-perl/vim-perl'
    Plugin 'gootorov/q-sharp.vim'

call vundle#end()           


try 
    let g:cwd = getcwd()
    let g:dirname = split(g:cwd, '/')[-1]
    let g:dirname_2 = split(g:cwd, '/')[-2]

    silent exec !mkdir -p ./.vim/backups ./.vim/directory ./.vim/undodir

    if (isdirectory("./.vim") == 0) && (g:dirname != ".vim") && (g:dirname_2 !=".vim") 
        " silent call mkdir("./.vim",'p')
        silent call mkdir("./.vim/backups",'p')
        silent call mkdir("./.vim/directory",'p')
        silent call mkdir("./.vim/undodir",'p')
    elseif (isdirectory("./.vim") == 1) 
        silent call mkdir("./.vim/backups",'p')
        silent call mkdir("./.vim/directory",'p')
        silent call mkdir("./.vim/undodir",'p')
    endif
catch

endtry

if !has("nvim")
    silent execute "set <M-f>=\ef"
    " silent execute "set <M-t>=\et"
    silent execute "set <M-y>=\ey"
endif

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
" let vim_markdown_preview_github = 1
let maplocalleader=","
let g:usemarks=0
let NERDTreeShowHidden=1
let g:pymode_python = 'python3'
let g:UltiSnipsUsePythonVersion = 3
let g:ycm_auto_trigger = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:ycm_python_binary_path = "/usr/bin/python3"
let g:gitgutter_highlight_lines = 0
let g:netrw_altv = 1
let g:netrw_browse_split = 4


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

autocmd FileType help wincmd L

" Mappings

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
inoremap ~~ <esc>gT i
nnoremap ~~ gT
nnoremap <c-b> :Commentary<cr>
nnoremap <localleader>o :NERDTreeToggle<cr>
inoremap <localleader>o <esc>:NERDTreeToggle<cr>i
" inoremap <c-x> <esc>:UndotreeToggle<cr>i
" nnoremap <c-x> :UndotreeToggle<cr>
nnoremap <f2> :UndotreeToggle<cr>
nnoremap <f5> :make <cr>
nnoremap <localleader>g :YcmCompleter GoTo<cr>
nnoremap <localleader>d :YcmCompleter GetDoc<cr>
nnoremap <localleader>t :YcmCompleter GetType<cr>
vnoremap <C-c> "+y
inoremap <C-v> <esc>"+pa
vnoremap <c-d> "+d

set title
set colorcolumn=80
set noexpandtab
" set tabstop=8
" set shiftwidth=8
" set softtabstop=8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set relativenumber
set expandtab
set foldenable

" set foldmethod=indent
set backupdir=~/.vim/backups,./backups,../backups
set directory=~/.vim/directory,./directory,../directory
set undodir=~/.vim/undodir,./undodir,../undodir

" Perl Mode
autocmd FileType perl set autoindent|set smartindent
set incsearch
autocmd FileType perl set showmatch
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>
nnoremap <silent> _d :.!perl -MO=Deparse 2>/dev/null<cr>
vnoremap <silent> _d :!perl -MO=Deparse 2>/dev/null<cr>


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


" hi SpellBad ctermfg=173 ctermbg=214 guifg=#131312 guibg=#324523
" hi SpellCap ctermfg=213 ctermbg=524 


" autocmd FileType perl setlocal equalprg=perltidy\ -st\ -enc=utf8\ -bl

augroup autoformat_settings
    " autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
    " autocmd FileType dart AutoFormatBuffer dartfmt
    autocmd FileType go AutoFormatBuffer gofmt
    " autocmd FileType gn AutoFormatBuffer gn
    autocmd FileType python AutoFormatBuffer autopep8
    " autocmd FileType javascript AutoFormatBuffer js-beautify
    " javascript

    " autocmd FileType html,css,json AutoFormatBuffer js-beautify
    " autocmd FileType css,json AutoFormatBuffer js-beautify
    " autocmd FileType java AutoFormatBuffer google-java-format
    " autocmd FileType python AutoFormatBuffer yapf
    " autocmd FileType perl AutoFormatBuffer perltidy\ -st
augroup END




"" Fold options global for folding in C like languages.

let b:fold_options = { 'fold_blank': 0, 'fold_includes': 0, 'max_foldline_length': 'win', 'merge_comments' : 0, 'show_if_and_else': 0, 'strip_namespaces': 1, 'strip_template_arguments': 1, }



" set background=dark
" set t_Co=256
" colorscheme PaperColor
" colorscheme badwolf
" colorscheme good
" colorscheme molokai
" colorscheme solarized
" colorscheme dracula


colorscheme badwolf
" colorscheme smarties


nnoremap <localleader>m :tabedit .vim/vimrc<cr>


if filereadable(expand('./.vim/vimrc' ))
    source ./.vim/vimrc
endif
