set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" 显示行号
set nu

" 注释颜色 0 黑色 1  红色 2 墨绿 3 黄色 4 蓝色 5 粉色 6 淡蓝色 7 白色
hi comment ctermfg=6

" 开启语法高亮
syntax enable

" 不与 Vi 兼容
set nocompatible

" 1=启动显示状态行, 2=总是显示状态行
" 设置总是显示状态行,方便看到当前文件名
set laststatus=2

" 设置状态行显示的内容. %F: 显示当前文件的完整路径
" %r: 如果readonly,会显示[RO]
" %B: 显示光标下字符的编码值,十六进制
" %l:光标所在的行号. %v:光标所在的虚拟列号
" %P: 显示当前内容在整个文件中的百分比
" %H和%M是strftime()函数的参数,获取时间
set statusline=%F%r\ [HEX=%B][%l,%v,%P]\ %{strftime(\"%H:%M\")}

"显示还没有输入完整的命令.例如yy命令,输入第一个y会在右下角显示y
set showcmd

" 使用Tab键补全时,在状态栏显示匹配的列表
" 方便查看都有哪些命令符合补全条件
set wildmenu

" 高亮显示匹配的括号
set showmatch

" 高亮显示所有搜索到的内容
set hlsearch

" 自动缩进时,缩进长度为4
set shiftwidth=4













