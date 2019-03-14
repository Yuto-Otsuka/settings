" -----------------------
" encording
" -----------------------
set encoding=utf-8
set fileencodings=euc-jp,utf-8,iso-2022-jp,sjis
set fileformats=unix,dos,mac

" -----------------------
" key bind
" -----------------------
" C-fでコマンドモード
imap <C-f> <esc>

" -----------------------
" bundle
" -----------------------
" How to install Neobundle
" http://qiita.com/Kuchitama/items/68b6b5d5ed40f6f96310

set nocompatible
filetype off


if has('vim_starting')
        set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle "Shougo/neocomplcache"
" define dictionary
autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionary/php.dict filetype=php
" disable AutoComplpop
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

NeoBundle "Shougo/unite.vim"
NeoBundle "Lokaltog/vim-powerline"
NeoBundle "scrooloose/nerdtree"
nnoremap <silent><C-e> :NERDTreeToggle<CR>
NeoBundle "gtags.vim"
NeoBundle 'https://github.com/t9md/vim-quickhl'
NeoBundle 'https://github.com/tpope/vim-fugitive'
nnoremap ,gd : Gdiff<CR><C-w>w
nnoremap ,gb : Gblame<CR>


call neobundle#end()

filetype plugin indent on

" -----------------------
" color
" -----------------------
syntax on " 色をつける
set t_Co=256 " 256色を使う
colorscheme molokai " 使う色の指定

" -----------------------
" mouse
" -----------------------
set mouse=a
set ttymouse=xterm2


" -----------------------
" Tab
" -----------------------
"nnoremap <C-n>   gt    "タブ移動
"nnoremap <C-p>   gT    "タブ移動

" -----------------------
" display
" -----------------------
set number " 行番号を表示する
set ruler " カーソルが何行目かを表示する
set scrolloff=5
set wrap
set noswapfile
set backspace=indent,eol,start " インサートモード時にバックスペースを使う
set list " 特殊文字(SpecialKey)の見えるようにする
set listchars=tab:>\ ,eol:\ ,trail:- " 個別の文字がどのように表示されるか。trail : 行末スペース, eol : 行末
set expandtab
set shiftwidth=4 " インデントの各段階に使われる空白の数
set softtabstop=4
set tabstop=4 " ファイル内の Tab が対応する空白の数
set hlsearch " 検索語に色をつける
set smartcase " 検索時に大文字を含んでいたら大小区別
set incsearch " 検索時にインクリメンタルサーチを行う
set showmode " 現在のモードを表示する
set title " タイトルを表示
set cindent " if(){}などのインデント
" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
" OSのクリップボードを使う
set clipboard+=unnamed
set clipboard=unnamed
" netrwは常にtree view
"let g:netrw_liststyle = 3
" CVSと.で始まるファイルは表示しない
"let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
"let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
"let g:netrw_alto = 1

" -----------------------
" foldmethod
" -----------------------
set foldmethod=marker
set commentstring=//%s
"au BufNewFile,BufRead *.tpl :set foldmethod=marker
au BufNewFile,BufRead *.tpl :set foldmarker=<<<,>>>
"au BufNewFile,BufRead *.css :set foldmethod=marker
au BufNewFile,BufRead *.css :set foldmarker={{{,}}}
"au BufNewFile,BufRead *.php :set foldmethod=marker
au BufNewFile,BufRead *.php :set foldmarker={{{,}}}
"autocmd FileType php :let php_folding=1
"highlight Comment ctermfg=cyan
" test
" {{{ test1
" {{{ test1-1
" {{{ test1-1-1
" }}}
" }}}
" {{{ test1-2
" }}}
" }}}

"------------------------
" omnifunc
"------------------------
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags " htmlを補完
autocmd FileType css set omnifunc=csscomplete#CompleteCSS " cssを補完
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags " xmlを補完
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS " jsを補完
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP " phpを補完
autocmd FileType python set omnifunc=pythoncomplete#CompletePHP " pythonを補完
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete " rubyを補完
autocmd FileType c set omnifunc=ccomplete#Complete " cを補完
setlocal omnifunc=syntaxcomplete#Complete

"------------------------
" QuickHightLight
"------------------------
nmap <Space>hl <Plug>(quickhl-manual-this)
xmap <Space>hl <Plug>(quickhl-manual-this)
nmap <Space>hr <Plug>(quickhl-manual-reset)
xmap <Space>hr <Plug>(quickhl-manual-reset)
nmap <Space>hc <Plug>(quickhl-cword-toggle)
nmap <Space>ht <Plug>(quickhl-tag-toggle)
