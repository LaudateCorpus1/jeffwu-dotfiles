" help
nmap <Leader>? :Unite output:nmap\ \<Leader\><CR>

" avy
map <Leader>y <Plug>(easymotion-bd-jk)

" toggle
" show/hide line numbers
nnoremap <Leader>tn :set number!<CR>
" show/hide invisible chars
nnoremap <Leader>ti :set list!<CR>
" toggle git gutter
nnoremap <Leader>tg :GitGutterToggle<CR>
" paste mode
nnoremap <Leader>tp :set paste!<CR>

" windows
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>w= <C-W>=
nnoremap <Leader>wc :q<CR>
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>ww <C-W>w
" nnoremap <Leader>wm <C-W>o
nnoremap <Leader>wm :MaximizerToggle<CR>

" commenting
nmap <Leader>;; :Commentary<CR>
vmap <Leader>; :Commentary<CR>

" project
function! spacemacs#toggleExplorerAtRoot()
  if exists(':ProjectRootExe')
    exe "ProjectRootExe NERDTreeToggle"
  else
    exe "NERDTreeToggle"
  endif
endfunction
nmap <leader>pt :call spacemacs#toggleExplorerAtRoot()<CR>
nmap <leader>pf :CtrlPRoot<CR>

" reindent
nnoremap <Leader>j= mzgg=G`z

" files
nnoremap <Leader>fed :e ~/.vimrc<CR>
nnoremap <Leader>feR :source ~/.vimrc<CR>
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fS :wa<CR>
" yank history
nnoremap <Leader>fp :<C-u>Unite history/yank<cr>
" find all (meh)
" nnoremap <Leader>fa :<C-u>Unite buffer history/yank file file_rec/async file_mru<cr>
" find files
" nnoremap <Leader>ff :<C-u>Unite file file_rec/async file_mru<cr>
" recent files
" nnoremap <Leader>fr :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>

"buffers
nmap <Leader><TAB> <C-^>
nnoremap <Leader>bb :CtrlPBuffer<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bR :e<CR>

" save/quit
nnoremap <Leader>qq :qa<CR>
nnoremap <Leader>qQ :qa!<CR>
nnoremap <Leader>qs :xa<CR>

" clear search
nnoremap <Leader>sc :noh<CR>
" doesn't really work well:
" nmap <Leader>sp :Ggrep<SPACE>

" git
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>Td :GitGutterToggle<CR>

" TODO: folding
