call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'kien/auto-pairs'
call plug#end()


" switch tab 
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nnoremap <A-Up> :tabfirst<CR>
nnoremap <A-Down> :tablast<CR>

" Plugins
" nerdtree
let NERDTreeShowHidden=1
nnoremap <silent> <C-a> :NERDTreeToggle <CR>

"nord-vim
let g:airline_theme='nord'


"airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_html_tidy_quiet_messages={"level":"warnings"}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" supertab: tab 沒生效, 需要用 ctrl+p
let g:SuperTabMappingForward='<s-tab>'
let g:SuperTabMappingBackward='<tab>'