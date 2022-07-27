--- CONFIG LSP - Completion

-- local lspkind = require("lspkind")
-- require('lspkind').init({
--     -- mode = 'symbol_text',
--     -- with_text = true,
-- })

local cmp = require('cmp')
-- local source_mapping = {
--   buffer = "[Buffer]",
--   nvim_lsp = "[LSP]",
--   nvim_lua = "[Lua]",
--   path = "[Path]",
--   cmdline = "[CMD]",
-- }

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
    -- formatting = {
    --       format = function(entry, vim_item)
    --           vim_item.kind = lspkind.presets.default[vim_item.kind]
    --           local menu = source_mapping[entry.source.name]
    --           if entry.source.name == 'cmp_tabnine' then
    --               if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
    --                   menu = entry.completion_item.data.detail .. ' ' .. menu
    --               end
    --               vim_item.kind = ''
    --           end
    --           vim_item.menu = menu
    --           return vim_item
    --       end
    -- },
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
