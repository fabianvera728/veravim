-- Setters


local set = vim.opt

set.mouse = 'c'
set.linebreak = true
set.colorcolumn = '120'
set.number = true
set.relativenumber = true
set.expandtab = true
set.autoindent = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.smartindent = true
set.backup = false
set.swapfile = false
set.wildmenu = true
set.termguicolors = true
set.visualbell = true
set.compatible = false
set.writebackup = false
set.wildignore = { '*/cache/*', '*/tmp/*', '*/node_modules/*' }
set.completeopt = "menu,menuone,noselect"
set.clipboard = 'unnamedplus'
set.path = set.path + '**'
set.statusline:append('%#warningmsg#')
set.statusline:append('%*')
set.list = true
set.wrap = false
set.cursorline = true
set.guifont = "JetBrains Mono:h10"
-- set.laststatus = 0
-- set.foldmethod = 'expr'
-- set.foldexpr = 'nvim_treesitter#foldexpr()'
-- set.background = 'light'
set.background = 'dark'
