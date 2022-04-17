-- KEYMAPPINGS

local map = vim.api


---- Apply and reload changes in the current buffer configuration
map.nvim_set_keymap("n", "<A-C-r>", ":source %<cr>", {noremap = true, silent = true})
map.nvim_set_keymap("n", "<A-C-r>", ":source % <cr>", {noremap = true, silent = true})


---- Telescope and files
-- map.nvim_set_keymap('n', '<leader>f', ':Telescope find_files prompt_prefix=🔍<cr>', {noremap=true})
-- map.nvim_set_keymap('n', '<leader>b', ':Telescope buffers prompt_prefix=🔍<cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-f>', ':Telescope find_files prompt_prefix=📁 <cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-Tab>', ':Telescope buffers prompt_prefix=🪟 <cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-S-f>', ':Telescope live_grep prompt_prefix=🧐 <cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-s>', ':Telescope current_buffer_fuzzy_find prompt_prefix=🧐 <cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-a>', ':Telescope lsp_code_actions prompt_prefix=🧐 <cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-r>', ':Telescope lsp_references prompt_prefix=🧐 <cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-d>', ':Telescope lsp_definitions prompt_prefix=🧐 <cr>', {noremap=true})

---- File explore
-- map.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-e>', ':NvimTreeToggle<cr>', {noremap=true})

---- LSP - Install
map.nvim_set_keymap('n', '<A-x>', ':LspInstall<cr>', {noremap=true})

---- buffers
map.nvim_set_keymap('n', '<leader>j', ':bprevious<cr>', {noremap=true})
map.nvim_set_keymap('n', '<leader>k', ':bnext<cr>', {noremap=true})
map.nvim_set_keymap('n', '<A-q>', ':bdelete<cr>', {noremap=true})

---- Shortcuts
map.nvim_set_keymap('n', '<leader>w', ':w<cr>', {noremap=true})
map.nvim_set_keymap('n', '<leader>i', ':m .-2<cr>==', {noremap=true})
map.nvim_set_keymap('n', '<leader>u', ':m .+1<cr>==', {noremap=true})
map.nvim_set_keymap('v', '<leader>i', ':m .-2<cr>gv=gv', {noremap=true})
map.nvim_set_keymap('v', '<leader>u', ':m .+1<cr>gv=gv', {noremap=true})
map.nvim_set_keymap('n', '<leader><Tab>', ':', {noremap=true})

--- Move in panels
-- map.nvim_set_keymap('n', '<leader>z<cr>', '<C-w><C-h>', {noremap=true})
-- map.nvim_set_keymap('n', '<leader>v', '<C-w><C-l>', {noremap=true})
-- map.nvim_set_keymap('n', '<leader>x', '<C-w><C-j><cr>', {noremap=true})
-- map.nvim_set_keymap('n', '<leader>cv', '<C-w><C-k><cr>', {noremap=true})
map.nvim_set_keymap('n', '<M-h>', '<C-w><C-h>', {noremap=true})
map.nvim_set_keymap('n', '<M-l>', '<C-w><C-l>', {noremap=true})
map.nvim_set_keymap('n', '<M-j>', '<C-w><C-j>', {noremap=true})
map.nvim_set_keymap('n', '<M-k>', '<C-w><C-k>', {noremap=true})

-- inoremap
map.nvim_set_keymap('i', 'jj', '<esc>', {noremap=true})

-- Terminal
map.nvim_set_keymap('n', '<leader>a', ':ToggleTerm<cr>',{noremap=true})
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- vnoremap


