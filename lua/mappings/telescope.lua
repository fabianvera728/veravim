--- Telescope configurations


local map = vim.api.nvim_set_keymap

---- Telescope shortcuts
map('n', '<A-f>', ':Telescope find_files prompt_prefix=📁 <cr>', { noremap = true })
map('n', '<A-Tab>', ':Telescope buffers prompt_prefix=🪟 <cr>', { noremap = true })
map('n', '<A-S-f>', ':Telescope live_grep prompt_prefix=🧐 <cr>', { noremap = true })
map('n', '<A-s>', ':Telescope current_buffer_fuzzy_find prompt_prefix=🧐 <cr>', { noremap = true })
-- map('n', '<A-a>', ':Telescope lsp_code_actions prompt_prefix=🧐 <cr>', { noremap = true })
map('n', '<A-r>', ':Telescope lsp_references prompt_prefix=🧐<cr>', { noremap = true })
map('n', '<A-d>', ':Telescope lsp_definitions prompt_prefix=🧐<cr>', { noremap = true })
