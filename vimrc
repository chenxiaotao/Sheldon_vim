" be iMproved
set nocompatible
" Vundle setting {
	filetype off " required!

	set rtp+=~/.vim/bundle/vundle/
	"if has("gui_running")
		"set rtp+=~/.vim/bundle/vim-powerline
	"endif
	call vundle#rc()

	" let Vundle manage Vundle(required!)
	Bundle 'gmarik/vundle'

	" plugins repos {
		"a css/html helper
		Bundle 'ZenCoding.vim'
		Bundle 'mangege/web-indent'
		" code complete plugin
		"Bundle 'Valloric/YouCompleteMe'
		Bundle 'jeetsukumaran/vim-buffergator'
		" The-NERD-tree
		Bundle 'The-NERD-tree'
		" Commenter for many lang
		Bundle 'The-NERD-Commenter'
		" Taglist
		Bundle 'taglist.vim'
		" match ()
		Bundle 'matchit.zip'
		" color colorscheme
		Bundle 'chriskempson/vim-tomorrow-theme'
		" more colorful colorscheme
		Bundle 'athom/more-colorful.vim'
		" Auto close the block #when i use AutoClose  found it not work very well so i use this replace it
		Bundle 'jiangmiao/auto-pairs'
		" Get git branch status
		Bundle 'Git-Branch-Info'
		" SuperTab for autocomplete
		Bundle 'SuperTab'
		" ctrlp.vim
		Bundle 'ctrlp.vim'
		" vim plugin for Ruby
		Bundle 'vim-ruby/vim-ruby'
		Bundle 'tpope/vim-rails'
		" Vim golang plugin
		Bundle 'jnwhiteh/vim-golang'
		" Vim python plugin
		"Bundle 'hynek/vim-python-pep8-indent'
		"Bundle 'nvie/vim-flake8'
		" Coffee script
		Bundle 'kchmck/vim-coffee-script'
		" markdown plugin
		Bundle 'hallison/vim-markdown'
		" Vim yaml plugin
		Bundle 'avakhov/vim-yaml'
		" Markdown hightline plugin
		Bundle 'Markdown'
		" tabular #code formate
		Bundle 'godlygeek/tabular'
		" Yggdroot indentLine
		Bundle 'Yggdroot/indentLine'
	" }

	" required!
	filetype plugin on
	filetype plugin indent on
" }
" TagList setting {
	" Show Tlist on the right
	let Tlist_Use_Right_Window=1

	" Close vim when Tlist is the last window
	let Tlist_Exit_OnlyWindow=1

	" Show Tlist only one file
	let Tlist_Show_One_File=1

	" Get focus when open the Tlist
	let Tlist_GainFocus_On_ToggleOpen=1

	" Mapping <F8>to Toggle the Tlist
	map <C-o> :TlistToggle<cr>
" }
" NERDTree setting {
	map <C-g> :NERDTreeToggle<cr>
	let NERDTreeIgnore = ['.pyc', '.swp', 'rdb']
" }
" format setting {
	" 开始行号
	set number
	" 设定 << 和 >> 命令移动时的宽度为 4
	set shiftwidth=4
	" 使得按退格键时可以一次删掉 4 个空格
	set softtabstop=4
	" 设定 tab 长度为 4
	set tabstop=4
	" 设定提示宽度的标尺为80个字符
	set textwidth=80
	set cc=+1
	" 光标距离上下边距行数
	set so=3
	" 为这些语言设置缩进风格 {
		autocmd FileType ruby       set shiftwidth=2 | set expandtab | set softtabstop=2
		autocmd FileType erlang     set shiftwidth=2 | set expandtab
		autocmd FileType python     set shiftwidth=4 | set expandtab | setlocal foldmethod=indent
		autocmd FileType php        set shiftwidth=4 | set expandtab
		autocmd FileType html       set shiftwidth=2 | set expandtab | set softtabstop=2
		autocmd FileType eruby      set shiftwidth=2 | set expandtab | set softtabstop=2
		autocmd FileType javascript set shiftwidth=2 | set expandtab | set softtabstop=2
		autocmd FileType go         set shiftwidth=4 | set softtabstop=2
		"autocmd Filetype gitcommit  setlocal spell textwidth=72
	" }
	" 设置代码折叠 {
	set foldmethod=marker
	set foldnestmax=3
	set foldenable
	"set nofoldenable
	"set foldclose=all
	" }
" }
" display setting {
	" 显示状态栏 (默认值为 1, 无法显示状态栏)
	set laststatus=2
	" 搜索时高亮显示被找到的文本
	set hlsearch
	" 输入搜索内容时就显示搜索结果
	set incsearch
	" 显示tab以及空格
	set list
	set listchars=tab:>-,trail:·
	" syntax on
	syntax on
	" 设置backspace
	set backspace=indent,eol,start
" }

" key map {
	" <leader> key setting {
		let mapleader = ","
		let g:mapleader = ","
	" }

	" fast change panel {
		nmap <Tab> <C-w>w
		nmap <c-h> <c-w><c-h>
		nmap <c-j> <c-w><c-j>
		nmap <c-k> <c-w><c-k>
		nmap <c-l> <c-w><c-l>
	" }

	" 快速退出
	map <leader>q :q<cr>
	map <leader>qq :q!<cr>
	" 快速保存
	nmap <leader>w :w!<CR>
	" 快速保存并退出
	map <leader>wq :wq<cr>
" }

" other setting {
	" Set to auto read when a file is changed from the outside
	set autoread
	" no backup
	set nobackup
	" 自动缩进
	set autoindent
	" remove bell
	set vb
	" 让Vim默认使用系统的剪切板
	set clipboard=unnamed

	" Vim使用的ctag  已经不用了系统的ctags已经软连接到/usr/local/bin/ctags
	let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

	" status自定义显示 {
	set statusline=Ray 
	set statusline+=\ ░\ Git:\ %{GitBranchInfoTokens()[0]}\ ░
	set statusline+=\ %f%m
	set statusline+=%=%{''.(&fenc!=''?&fenc:&enc).''}
	set statusline+=\ ░\ %{&ff}
	set statusline+=\ ░\ %y
	set statusline+=\ ░\ [%-8.(%l,%c%)\ %-4.(%p%%%)]
	" }
	" 设置golang complete格式 {
	"set completeopt=longest,menu
	" }
	"vim-flake8 python plugin
	autocmd BufWritePost *.py call Flake8()
	map <leader>i :call Flake8()<CR>
	let g:flake8_ignore="F403,E501"
	" 设置代码indentLine的标示
	let g:indentLine_char = '┆'
	let g:indentLine_color_term = 239
	"let g:indentLine_color_gui = '#6A4C9C'
	" 设置命名列表 {
	set wildmode=list:longest
	set wildmenu
	set wildignore=*.o,*.obj.*.~
	" }
	" Tabular config and key map {
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
	inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
	function! s:align()
		let p = '^\s*|\s.*\s|\s*$'
		if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
			let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
			let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
			Tabularize/|/l1
			normal! 0
			call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
		endif
	endfunction
	" }
