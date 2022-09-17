--- NvimTree and Tagbar configurations 


local map = vim.api.nvim_set_keymap

---- File explore
map('n', '<A-e>', ':NvimTreeToggle<cr>', { noremap = true })
map('n', '<A-t>', ':TagbarToggle<cr>', { noremap = true })
