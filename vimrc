" Andrew Gaul's .vimrc

set autoindent                          " use indentation from previous line
set backspace=2                         " allow backspacing over everything
set directory=~/.vim/swp                " temporary file location
set expandtab                           " expand tabs to spaces
set hlsearch                            " highlight search terms
set ignorecase                          " ignore case when searching
set nobackup                            " do not litter backup files
set nocompatible                        " modern vi
set pastetoggle=<F4>                    " toggle paste mode
set ruler                               " show location of cursor
set shiftwidth=4                        " number of spaces for >>
set showcmd                             " show information about commands
set showmatch                           " show [({})] matches
set spellfile=~/.spellfile.add          " spell checking
set tabstop=4                           " number of spaces for tab indents
set tags=~/work/tags                    " tags for navigating source code
set wildignore+=*.class,*.o,*.pdf,*.pyc " ignore binary files in tab complete

let c_space_errors=1                    " highlight trailing whitespace
let java_space_errors=1                 " highlight trailing whitespace
let python_highlight_all=1              " extended Python highlighting

cscope add ${HOME}/work/cscope.out
nmap <C-\>s :cscope find s <C-R>=expand("<cword>")<CR><CR>

autocmd BufRead /tmp/mutt* setlocal spell
autocmd BufRead /tmp/mutt* setlocal textwidth=72
autocmd BufRead /tmp/mutt* silent :g/^> -- $/-1,/^$/-1d

autocmd BufRead .git/COMMIT_EDITMSG setlocal spell
autocmd BufRead .git/COMMIT_EDITMSG setlocal textwidth=70

autocmd BufRead *.txt setlocal textwidth=80

autocmd FileType java setlocal foldmarker=/**,*/ foldmethod=marker foldcolumn=0
highlight Folded ctermbg=black ctermfg=darkgray

syntax on

" c-space inserts a NUL which repeats text from last insert:
" http://www.shallowsky.com/blog/linux/editors/vim-ctrl-space.html
imap <Nul> <Space>
