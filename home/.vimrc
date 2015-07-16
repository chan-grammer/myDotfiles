" vundle settings{{{

set nocompatible " be iMproved
filetype off    " required!

" Set runtimepath for vundle in windows
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/Vundle.vim
    call vundle#rc('$HOME/vimfiles/bundle/')
else
    " For *nix
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

"}}}
" vundle plugins{{{

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
"Emmet
Plugin 'mattn/emmet-vim'
"Surround
Plugin 'tpope/vim-surround'
"Vim Haml/SCSS/Sass syntax highlighter
Plugin 'tpope/vim-haml'
"Vim-obsession
Plugin 'tpope/vim-obsession'
"CsApprox
Plugin 'godlygeek/csapprox'
"EasyMotion
Plugin 'Lokaltog/vim-easymotion'
"T-Comment
Plugin 'tomtom/tcomment_vim'
"NerdTree
Plugin 'scrooloose/nerdtree'
"Vim-Airline
Plugin 'bling/vim-airline'
"SuperTab
Plugin 'ervandew/supertab'
"Match_tag_always
Plugin 'Valloric/MatchTagAlways'
"Tabular
Plugin 'godlygeek/tabular'
"Gundo
Plugin 'sjl/gundo.vim'
"Vim-jsbeautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
"Vim EditorConfig
Plugin 'editorconfig/editorconfig-vim'
"Syntastic
Plugin 'scrooloose/syntastic'
"CtrlP
Plugin 'kien/ctrlp.vim'
Plugin 'd11wtq/ctrlp_bdelete.vim'
"Tagbar
Plugin 'majutsushi/tagbar'
"Vim-Misc
Plugin 'xolox/vim-misc'
"Vim-EasyTags
Plugin 'xolox/vim-easytags'
"Repeat
Plugin 'tpope/vim-repeat'
"Ultisnips
Plugin 'SirVer/ultisnips'
"Vim-Javascript
Plugin 'jelera/vim-javascript-syntax'
"Vim-CSS3-Syntax
Plugin 'hail2u/vim-css3-syntax'
"TERN-JS
Plugin 'marijnh/tern_for_vim'
"Tmux-Navigator
Plugin 'christoomey/vim-tmux-navigator'
"Vim-Jade
Plugin 'digitaltoad/vim-jade'
"PreserveNoEOL
Plugin 'vim-scripts/PreserveNoEOL'
"COLOR SCHEMES
"Pyte
Plugin 'therubymug/vim-pyte'
"FlatColor
Plugin 'MaxSt/FlatColor'
"Gruvbox
Plugin 'morhetz/gruvbox'
"Molokai
Plugin 'tomasr/molokai'
"Vim-Blade
Plugin 'xsbeats/vim-blade'
"Vim-PHP-Namespace
Plugin 'vim-php-namespace'
"Vim-Fugitive
Plugin 'tpope/vim-fugitive'
"Vim-Instant-Markdown
Plugin 'suan/vim-instant-markdown'
"Vim CtrlSpace
" Plugin 'szw/vim-ctrlspace'

" All Plugins must be added before calling this line
call vundle#end() "required

"}}}
" vim general settings{{{

filetype plugin indent on " required
syntax enable

let mapleader = ","
let html_no_rendering=1

" disable splash screen(intro)
set shortmess +=I

set history=1000
set encoding=utf-8
set hidden
" search relative to the directory of the current file
" and within the current directory
set path=.,,,
" No Backups
set nobackup
set noswapfile
set wb
" don't redraw while executing macros
set lazyredraw
set nu
set ruler
set backspace=eol,start,indent
set listchars=tab:>-,eol:$
" No modelines for security reasons
set modelines=0
" Toggle paste
set pastetoggle=<leader>p
" let vim choose the fileformat depending on EOL
set fileformats=unix,dos
" syntax coloring lines that are too long just slows down the world
set synmaxcol=128
set nowrap

" symbol to show if wrap is on
set showbreak=↪
" used with %
set matchpairs+=<:>
" useful for buffer switching
" when there are so many files added to the buffer list
set nomore
set scrolloff=5
set mouse=a
" go up to the directory hierarchy until a tag file is found
" ';' means to recursively search upward. :h file-searching
set tags=./tags;

" reread file when a change is caused by some external programs
" works in conjunction with :checktime
set autoread
set updatetime=500

" disable background color erase
set t_ut=

"}}}
" ui settings{{{

if has('gui_running')

    if has("gui_gtk2")
        set guifont=Inconsolata\ 12

    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif

    " set guioptions-=T
    " set guioptions-=e
    set background=dark
    set guioptions=ac
    colorscheme gruvbox

else

    set background=dark
    colorscheme molokai

    let g:rehash256=1

endif

"}}}
" cmdline settings{{{

" show what mode you're currently at
set showmode
" enable enhanced command line completion
set wildmenu
" ignore files on command completion
set wildignore=*.o,*~,*.git
" Height of command bar
set cmdheight=2
" set statusline
set laststatus=2

"}}}
" indents and tabs setings{{{

" enable this to use spaces instead
set expandtab
set tabstop=4
" width when >> or << are pressed
set shiftwidth=4
" use spaces instead
" note: softtabstop takes precedence over tabstop
set softtabstop=4
" tab on the same level as previous line
set smarttab
" auto indent same level as previous line
set smartindent
set autoindent

"}}}
" searching setting{{{

" hightlight as you type
set incsearch
" ignore case when searching
" Note: \c or \C inside your search pattern ignores
" ignorecase && smartcase settings
" \pattern\C
set ignorecase
" case sensitive once there is the search word
" starts with an uppercase letter
set smartcase
" decides whether a special character in regex
" is to be taken literally or not
" to use the 'verymagic' option
" prepend your searches with \v, all non-alphanumeric
" characters have special meaning.
set magic

"}}}
"  error indication settings{{{

" No annoying sound on errors
set noerrorbells
set novisualbell
" important : set this to empty so that there won't be bell or flash
set t_vb=

"}}}
" folding settings{{{

" Add a bit of extra margin to left
set foldcolumn=2

"}}}
" plugin settings {{{

" SUPERTAB
    let g:SuperTabDefaultCompletionType = "context"
    let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" NERDTREE
    let NERDTreeIgnore=['\.vim$','\~$']
    " let NERDTreeChDirMode=2
    let NERDTreeWinSize=15
    let NERDTreeAutoDeleteBuffer=1

" SYNTASTIC
    let g:syntastic_javascript_checkers=['jshint']
    let g:syntastic_javascript_jshint_exec='/usr/local/bin/jshint'

    let g:syntastic_enable_signs=1
    let g:syntastic_check_on_open=1
    let g:syntastic_auto_jump=0
    let g:syntastic_always_populate_loc_list=1

    let g:syntastic_ignore_files=['^/usr/include/', '\c\.php$']

" EMMET

    let g:user_emmet_expandabbr_key = '<c-e>'

" CTRLP

    " needed for the ctrlp_delete extension
    call ctrlp_bdelete#init()
    let g:ctrlp_map = '<leader>P'
    let g:ctrlp_working_path_mode = 0
    let g:ctrlp_dotfiles = 0
    let g:ctrlp_buftag_ctags_bin = '/usr/bin/ctags-exuberant'

    silent! nmap <unique> <silent> <leader>P :CtrlP<CR>
    " CtrlP for buffers
    silent! nmap <unique> <silent> <leader>B :CtrlPBuffer<CR>
    " CtrlP for tags
    silent! nmap <unique> <silent> <leader>T :CtrlPTag<CR>
    " CtrlP for filetype
    silent! nmap <unique> <silent> <leader>F :CtrlPBufTagAll<CR>
    " CtrlP for clearing the cache,same as pressing <F5>
    silent! nmap <unique> <leader>C :CtrlPClearCache<CR>

" TAGBAR

    let g:tagbar_compact=1
    let g:tagbar_indent=1
    let g:tagbar_width=20
    let g:tagbar_show_visibility=1

    silent! nmap <unique> <silent> <leader>st :TagbarToggle<CR>

" EASYTAGS

    " update only tags per save
    let g:easytags_file='~/.vim/tags'
    let g:easytags_events=['BufWritePost']
    let g:easytags_auto_highlight=0
    " write first on project-specific tag files, then fallback to the
    " global tags file if not found
    let g:easytags_dynamic_files=1

" REPEAT
    " reference for creating your own repeatable mappings
    " http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/

    " repeat surround mappings
    silent! call repeat#set("\<Plug>surround", v:count)

" ULTISNIPS
    " split window vertically when editing
    let g:UltiSnipsEditSplit="vertical"
    " let g:UltiSnipsExpandTrigger="<tab>"
    " let g:UltiSnipsJumpForwardTrigger="<tab>"
    " let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" AIRLINE
    let g:airline_theme = 'bubblegum'
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#right_sep = ''

    let g:airline#extensions#ctrlspace#enabled = 1

    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#whitespace#enabled = 1
    let g:airline#extensions#tmuxline#enabled = 1
    " Format on displaying tab names
    let g:airline#extensions#tabline#formatter = 'unique_tail'

" JSBEAUTIFY

    " Set path where jsbeautify will look for .editorconfig file
    let g:editorconfig_Beautifier = expand('~/.vim/.editorconfig')

" VIM-PHP-NAMESPACE
    inoremap <leader>u <C-O>:call PhpInsertUse()<CR>
    noremap <leader>u :call PhpInsertUse()<CR>

" VIM-INSTANT-MARKDOWN
    let g:instant_markdown_slow = 1
    let g:instant_markdown_autostart = 0

"}}}
" custom highlights{{{

    " Create a hightlight marker when it exceeds a certain 'line length'
    " In this example: if the line exceeds 80 char line-length
    " Source : http://superuser.com/a/771578/349890
    highlight MarkLineLengthExcess ctermbg=magenta
    call matchadd('MarkLineLengthExcess', '\%81v', 100)

" }}}
" plugin mappings{{{

" NERDTree
    map <leader>nt :NERDTreeToggle<cr>
    map <leader>nf :NERDTreeFind<cr>

" TABULARIZE
    if exists(":Tabularize")
        nnoremap <leader>a= :Tabularize /=<CR>
        vnoremap <leader>a= :Tabularize /=<CR>
        nnoremap <leader>a: :Tabularize /:<CR>
        vnoremap <leader>a: :Tabularize /:<CR>
        nnoremap <leader>a> :Tabularize /=><CR>
        vnoremap <leader>a> :Tabularize /=><CR>
    endif

" GUNDO
    nnoremap <leader>gu :GundoToggle<CR>

" TCOMMENT
    noremap <leader>gb :TCommentBlock<CR>

"}}}
" general mappings {{{

" convert tabs to spaces
map <leader>zs :<c-u>set et <bar> retab!<cr>
" convert spaces to tabs
map <leader>zt :<c-u>set noet <bar> retab!<cr>

" show the current indentation settings
map <leader>zz :<c-u>set et? <bar> set sw? <bar> set sts? <bar> set ts?<cr>

" remap ',' for last f/F operations in backward motion
nnoremap <; ,

" autoclose common symbols
inoremap <leader>{ {<cr>}<c-o>O
inoremap <leader>( ()<c-o>i
inoremap <leader>[ []<c-o>i

" quick edits and sourcing

nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" navigation through quickfix results
nnoremap ]] :cnext<cr>
nnoremap [[ :cprevious<cr>

" disable keys
nmap Q <nop>
nmap F1 <nop>

"paste from clipboard
"overrides ctrlP plugin
nnoremap <c-p>p "+p
nnoremap <c-p>P "+P
"copy to clipboard
vnoremap <c-c> "+ygv<esc>
"cut to clipboard
vnoremap <c-d> "+ygvd

" delete to blackhole register, used with any text-motions
" example <c-d>i{ will delete all text within {} blocks
nnoremap <c-d> "_d

" indent the whole file
nnoremap Q gg=G

" override goto first/last non-blank char in the current line
nnoremap H _
nnoremap L g_

" remap H, L
nnoremap <leader>H H
nnoremap <leader>L L

" remap <esc> key
nnoremap <leader>; <esc>
inoremap <leader>; <esc>
vnoremap <leader>; <esc>
snoremap <leader>; <esc>
cnoremap <leader>; <c-c>

" mapping for moving around when wrap is on
nnoremap j gj
nnoremap k gk

" copy text from current cursor position up to the end of the line
nnoremap Y y$<esc>

" Convert selection of some various text-objects to their linewise counterpart
" Useful when you want to paste them on the next line
" Note 'V' converts it to linewise
nnoremap Vat vatV
nnoremap Va) vabV
nnoremap Va} va}V
nnoremap Va) va)V

" vertical split
nnoremap <leader>v  :rightbelow vnew<cr>
nnoremap <leader>h  :rightbelow new<cr>

" for jumping around code blocks
" NOTE:
" this assumes you execute these inside
" a Class block, otherwise it just jumps to the next/prev { or }
" go the the start of the next method
nmap <leader>j ]m
nmap <leader>k [m
" go the the end of the next method
nmap <leader>J ]M
nmap <leader>K [M

" toggles between relativenumber and number
" If nu is set toggle rnu and vice versa
nmap <silent>\ :exec &nu ? "set rnu!" : "set nu!"<cr>

" toggle invisible characters
nmap  <leader>l :set list!<cr>

" mapping for windows"
nnoremap <silent><c-h> :wincmd h<cr>
nnoremap <silent><c-j> :wincmd j<cr>
nnoremap <silent><c-k> :wincmd k<cr>
nnoremap <silent><c-l> :wincmd l<cr>

"moving windows
nnoremap <c-up> <c-w>K
nnoremap <c-right> <c-w>L
nnoremap <c-down> <c-w>J
nnoremap <c-left> <c-w>H

"resizing windows
nnoremap <Up> <c-w>+
nnoremap <Down> <c-w>-
nnoremap <Right> <c-w><
nnoremap <Left> <c-w>>

nmap <leader>r :vert resize<space>

"tab keymaps
"replace the tag map key
nmap  <c-t> :tabnew<cr>

"go to previous tag definition
nnoremap <leader>. <c-t>

"_ in this keymap is to jump for a line with a nonblank char
"map for switching windows
nnoremap <space> <c-w><c-w>_

" show buffer list, and allows you to switch buffers
nmap <leader>b :ls<cr>:b<space>
nmap <leader>sb :ls<cr>:sb<space>

" show tab list, and allows you to switch tab
nmap <leader>tl :tabs<cr>:tabn<space>
"allows you to move the tabs
nmap <leader>tm :tabm <space>

" toggle highlight from search pattern
nnoremap <leader>/ :set hlsearch!<cr>

" reselecting changed or pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Bash command shortcuts
" shortcut for renaming
nnoremap <leader>mv :!mv %:p %:p:h
" cd to the directory of the current file in buffer
nnoremap <leader>cd :lcd %:h<cr>
" shortcut for creating a directory
nnoremap <leader>md :!mkdir -p
" shortcut for creating a directory
nnoremap <leader>mf :!touch %:p:h

"reselect indented block of text in vim
vmap <leader>< <gv
vmap <leader>> >gv

" display the current path
cnoremap <leader>p <c-r>=expand("%:p:h")<cr>
" display the current filename
cnoremap <leader>f <c-r>=expand("%:p")<cr>

" remap to bash-like keys
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-h> <s-left>
cnoremap <c-l> <s-right>

" shortcut for setting filetype
cnoremap <leader>ft set ft=

" saving readonly files
cnoremap w!! w !sudo tee % > /dev/null

" Open a newtab when doing a redirect of an :ex command output
command! -nargs=+ -complete=command TabMessage :call TabMessage(<q-args>)

"}}}
" autocommands{{{

if has("autocmd")

    " Look for unnamed register "
    " Return to previous cursor position upon reading a file
    " check if the unnamed register is found and is NOT the last line of the file
    " jump to the last known position in a file
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ exe "normal! g`\"" |
                \ endif

    " Removing trailing spaces before saving the file
    au BufWritePre * :%s/\v\s+$//e

    " Clear paste mode when going back to normal mode
    au InsertLeave * set nopaste

    " Forces files with 'md' extension to use markdown as filetype
    au BufNewFile,BufReadPost *.md setlocal filetype=markdown

    " Forces the file to reload when entering a buffer or
    " when the user hasn't pressed a key for a specified amount of time
    au BufEnter,BufWinEnter,CursorHold,CursorHoldI * : silent! checktime

    " if vim is compiled with omnifunc
    if exists("+omnifunc")
        autocmd Filetype *
        \if &omnifunc == ""
        \setlocal omnifunc=syntaxcomplete#Complete
        \endif
    endif

    " CSS {{{2
    augroup ft_css
        au!
        au FileType css setlocal autoread
        au FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>
    augroup END
    " }}}

    " JAVASCRIPT {{{2
    augroup ft_js
        au!
        au FileType javascript nnoremap <buffer> <c-f> :call JsBeautify()<cr>
        au FileType javascript setlocal sts=2 sw=2 ts=2 et
    augroup END
    " }}}

    " HTML  {{{2
    augroup ft_html
        au!
        au FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>
    augroup END
    " }}}

    " VIM  {{{2
    augroup ft_vim
        au!
        au FileType vim setlocal foldmethod=marker
    augroup END
    " }}}

    " PHP {{{2
    augroup ft_php
        au!
        " note install first pman, and download php documentation
        au FileType php setlocal keywordprg=pman
    augroup END
    " }}}

    " PYTHON {{{2
    augroup ft_python
        au!
        au Filetype python setlocal st=4 sw=4 ts=4 et
    augroup END
    " }}}

"}}}
" vim scripts {{{

" Path of custom Vim scripts
let scripts_pattern="~/vim_scripts/*.vim"

" source vim scripts in vim_script_path
for f in split(glob(scripts_pattern), "\n")
    if filereadable(f)
        exe 'so' f
    endif
endfor

endif

"}}}
