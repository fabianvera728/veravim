---- NVIM - nvim-treesitter


local ok, treesitter_config = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end
treesitter_config.setup {
    -- indent ={
    --   enable = true,
    --   disable = {'python'},
    -- },
    -- highlight = {
    --     enable = true,
    --     additional_vim_regex_highlighting = false
    -- },
    -- incremental_selection = {
    --     enable = true,
    --     keymaps = {
    --         init_selection = "gnn",
    --         node_incremental = "grn",
    --         scope_incremental = "grc",
    --         node_decremental = "grm",
    --     },
    -- },
}


local ok_context, treesitter_context = pcall(require, "treesitter-context")
if not ok_context then
  return
end
treesitter_context.setup{}
