set nu ai ci si
set nobackup
set noswapfile
set backspace=2
set sts=4
set sw=4
set ts=4
set mouse=a
set guifont=Consolas\Bold\20
set showmatch
set expandtab
set smarttab
set showcmd
set fdm=marker
colorscheme yunhao
set t_Co=256

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

set cursorline
hi CursorLine   cterm=underline gui=underline
set cursorcolumn
hi CursorColumn cterm=NONE

map <insert> <S-i>//<Esc>j<S-i><Esc>
imap <insert> <Esc><S-i>//<Esc>j<S-i>
map <C-F12> <S-i><delete><delete><Esc>j
imap <C-F12> <Esc><S-i><delete><delete><Esc>j<S-i>

nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

map<F9> :call CR()<CR>
imap<F9> <Esc>:call CR()<CR>
vmap<F9> <Esc>:call CR()<CR>
func! CR()
exec "w"
exec "!g++ %"
exec "! ./a.out"
endfunc

nnoremap ; :
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i


set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

	" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" 另一种选择, 指定一个vundle安装插件的路径
	"call vundle#begin('~/some/path/here')

	" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

	" 以下范例用来支持不同格式的插件安装.
	" 请将安装插件的命令放在vundle#begin和vundle#end之间.

	" Github上的插件
	" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
	" 来自 http://vim-scripts.org/vim/scripts.html 的插件
	" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
Plugin 'L9'
	" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
	" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
	" 插件在仓库的子目录中.
	" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}

"=====================================airline========================
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 
set laststatus=2
"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1
let g:airline_theme="badwolf" 

 "打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
 "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

 " 关闭状态显示空白符号计数,这个对我用处不大"
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
"---------------------------------end airline-------------------------

	" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
	" 忽视插件改变缩进,可以使用以下替代:
	"filetype plugin on
	"
	" 简要帮助文档
	" :PluginList       - 列出所有已配置的插件
	" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
	" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
	" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
	"
	" 查阅 :h vundle 获取更多细节和wiki以及FAQ
	" 将你自己对非插件片段放在这行之后


autocmd BufNewFile *.cpp exec ":call SetTitle()"
func SetTitle()
if &filetype == 'cpp'
let l = 0
let l = l + 1 | call setline(l, "/**==================================")
let l = l + 1 | call setline(l, " | Author: YunHao")
let l = l + 1 | call setline(l, " | OJ: ")
let l = l + 1 | call setline(l, " | Kind: ")
let l = l + 1 | call setline(l, " | Date: ")
let l = l + 1 | call setline(l, " | Describe:")
let l = l + 1 | call setline(l, " |          ")
let l = l + 1 | call setline(l, " |          ")
let l = l + 1 | call setline(l, " =================================**/")
let l = l + 1 | call setline(l, "")
let l = l + 1 | call setline(l, "#include <iostream>")
let l = l + 1 | call setline(l, "#include <cstdio>")
let l = l + 1 | call setline(l, "#include <cstring>")
let l = l + 1 | call setline(l, "#include <algorithm>")
let l = l + 1 | call setline(l, "#include <queue>")
let l = l + 1 | call setline(l, "#include <vector>")
let l = l + 1 | call setline(l, "#include <cmath>")
let l = l + 1 | call setline(l, "")
let l = l + 1 | call setline(l, "using namespace std;")
let l = l + 1 | call setline(l, "typedef long long ll;")
let l = l + 1 | call setline(l, "")
let l = l + 1 | call setline(l, "int main()")
let l = l + 1 | call setline(l, "{")
let l = l + 1 | call setline(l, "    ")
let l = l + 1 | call setline(l, "    return 0;")
let l = l + 1 | call setline(l, "}")
endif
endfunc
