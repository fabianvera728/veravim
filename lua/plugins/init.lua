--- Plugins setup


require('plugins.plugins')
require('plugins.lspconfig')
require('plugins.completion')
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.gitsigns')
require('plugins.nvim_tree')
require('plugins.utils')
require('plugins.lualine')
require("lsp_signature").setup({})
require('refactoring').setup({})


-- require('plugins.impatient')

-- my plugins
-- require('plugins.select_theme')
