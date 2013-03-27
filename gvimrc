" 高亮显示当前行
set cursorline

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

" Gui字体
if has("mac")
	set guifont=Menlo:h14
	"set guifont=Droid\ Sans\ Mono\ for\ Powerline:h13
	"set guifont=Menlo\ for\ Powerline:h15
else
	set guifont=Monospace\ 10
endif
