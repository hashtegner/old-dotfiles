if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

syntax on
set clipboard=unnamed

autocmd Filetype Gemfile      set ft=ruby
autocmd Filetype Capfile      set ft=ruby
autocmd Filetype gitcommit setlocal spell textwidth=72

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ["node_modules", "tmp", "log/*", ".git"]
let NERDTreeShowHidden = 1

set t_Co=256

set autoindent
set autoread
set clipboard=unnamed
set cmdheight=1
set cursorline
set eol
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=1
set linespace=5
set list
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·
set nobackup
set noerrorbells
set noswapfile
set novisualbell
set nowrap
set nowritebackup
set number
set scrolloff=8
set showmatch
set noshowmode
set sidescroll=1
set sidescrolloff=15
set softtabstop=2
set shiftwidth=2
set smartcase
set smartindent
set tabstop=2
set wildmenu
set wildmode=list:longest
set wildignore+=*.png,*.jpg,*.gif,*.o,.git,tmp/**,coverage/**,node_modules/**,.DS_Store
