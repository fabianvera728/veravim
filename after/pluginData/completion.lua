--- CONFIG LSP - Completion


local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end
    },
    mapping = {
        ['<Down>'] = cmp.mapping.select_next_item({
            behavior = cmp.SelectBehavior.Replace
        }),
        ['<Up>'] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Replace
        }),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
    }, {
        { name = "buffer" },
    }, {
    }
    ),
})

cmp.setup.cmdline('/', {
    sources = cmp.config.sources({
        { name = 'buffer' },
    }
    )
})

cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' },
    }, {
        { name = 'cmdline' },
    }
    )
})
