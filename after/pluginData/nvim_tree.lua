-- Config nvim tree
--

local tree_cb = require('nvim-tree.config').nvim_tree_callback


require 'nvim-tree'.setup({
    view = {
        mappings = {
            list = {
                { key = '<C-s>', cb = tree_cb('split') },
                { key = '<C-v>', cb = tree_cb('vsplit') }
            }
        }
    },
    filters = {
        custom = {
            "^.git$",
            "^node_modules$"
        }
    },
    renderer = {
        indent_markers = {
            enable = true,
        }
    }
})
