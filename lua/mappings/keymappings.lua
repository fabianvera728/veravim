-- KEYMAPPINGS

local map = vim.api.nvim_set_keymap


---- Apply and reload changes in the current buffer configuration
map("n", "<A-C-r>", ":source %<cr>", { noremap = true, silent = true })

--- Github configs
map('n', '<A-g>', ':LazyGit<cr>', { noremap = true })

--- formatting files
map('n', '<A-i>', ':lua vim.lsp.buf.formatting()<cr>', { noremap = true })

--- Refactoring
map(
    'v',
    '<leader>rs',
    ':lua require("refactoring").select_refactor()<cr>',
    { noremap = true, silent = true }
)

map('n', '<A-w>', ':w<cr>', { noremap = true })

---- LSP - Install
map('n', '<A-x>', ':LspInstall<cr>', { noremap = true })

---- Management of multi buffers
map('n', '<leader>j', ':bprevious<cr>', { noremap = true })
map('n', '<leader>k', ':bnext<cr>', { noremap = true })
map('n', '<A-q>', ':bdelete<cr>', { noremap = true })

---- Move code
-- map('n', '<leader>i', ':m .-2<cr>==', { noremap = true, silent = true })
-- map('n', '<leader>u', ':m .+1<cr>==', { noremap = true, silent = true })
-- map('v', '<leader>i', ':m .-2<cr>gv=gv', { noremap = true, silent = true })
-- map('v', '<leader>u', ':m .+1<cr>gv=gv', { noremap = true, silent = true })
-- map('v', '<leader>u', ':m .+3<cr>gv=gv', { noremap = true })
map('n', '<leader>i', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
map('n', '<leader>u', ":MoveLine(1)<CR>", { noremap = true, silent = true })
-- map('v', '<leader>i', ":MoveBlock(-1)<cr>", { noremap = true, silent = true })
-- map('v', '<leader>u', ":MoveBlock(1)<cr>", { noremap = true, silent = true })
-- map('n', '<leader>key', ":movehchar(-1)<cr>", { noremap = true, silent = true })
-- map('n', '<leader>key', ":movehchar(1)<cr>", { noremap = true, silent = true })
-- map('v', '<leader>key', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
-- map('v', '<leader>key', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
map('n', '<leader><Tab>', ':', { noremap = true })


--- Resize panels
-- map('n', '<C-h>', '<C-w>3<', { noremap = true, silent = true })
-- map('n', '<C-l>', '<C-w>3>', { noremap = true, silent = true })

--- Move in panels
-- map('n', '<M-h>', '<C-w><C-h>', { noremap = true })
-- map('n', '<M-l>', '<C-w><C-l>', { noremap = true })
-- map('n', '<M-j>', '<C-w><C-j>', { noremap = true })
-- map('n', '<M-k>', '<C-w><C-k>', { noremap = true })

--- Scroll in pane
map('n', '<C-j>', 'jzz', { noremap = true, silent = true })
map('n', '<C-k>', 'kzz', { noremap = true, silent = true })


--- Tabbing in vim 
map('v', '<', '<gv', { noremap = true, silent = true })
map('v', '>', '>gv', { noremap = true, silent = true })


-- Maps for return nnoremap mode
map('i', 'jj', '<esc>', { noremap = true, silent = true })
map('v', 'q', '<esc>', { noremap = true, silent = true })


-- Disable arrow keymaps
map('', '<up>', '<nop>', { noremap = true })
map('', '<down>', '<nop>', { noremap = true })
map('', '<left>', '<nop>', { noremap = true })
map('', '<right>', '<nop>', { noremap = true })


