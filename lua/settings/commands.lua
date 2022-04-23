-- COMMANDS


local cmd = vim.cmd

cmd('syntax enable')
-- cmd('autocmd BufRead,BufNewFile * set laststatus=0')
cmd('autocmd BufWrite * lua vim.lsp.buf.formatting()')
cmd('colorscheme gruvbox8')
-- cmd('colorscheme one')
-- cmd('colorscheme onedark')
-- cmd('colorscheme rose-pine')
cmd('hi Normal guibg=NONE ctermbg=NONE')
