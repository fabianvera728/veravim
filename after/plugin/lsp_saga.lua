--- UI with lsp saga configuration

local ok, saga = pcall(require, "lspsaga")
if not ok then
    return
end

saga.init_lsp_saga({
    -- your configuration
    border_style = "rounded",
})
