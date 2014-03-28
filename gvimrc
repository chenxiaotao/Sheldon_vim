" 高亮显示当前行
"set cursorline

" GUI中不显示滚动条
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b

" Gui 不显示菜单
set guioptions-=m

" Gui不显示工具栏
set guioptions-=T

" 启用鼠标
set mouse=a

" 设置颜色
colorscheme Tomorrow-Night-Eighties
"colorscheme last-night-bright
autocmd! BufEnter,BufNewFile *.go colo last-night-bright "yesterday在这里是一个可备选的主题
autocmd! BufLeave *.go colo Tomorrow-Night-Bright

" Gui字体
if has("mac")
	"set guifont=Monaco:h12
	set guifont=Menlo:h14
else
	set guifont=Monospace\ 10
endif
