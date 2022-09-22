---- UTILS -- CONFIG


local ok, filetype = pcall(require, "filetype")
if not ok then
  return
end

filetype.setup {}
-- require'navigator'.setup()
-- require("neogit").setup {}
-- require("null-ls").setup {}
--
--
-- For install --
-- tabby.nvim
-- sidebar.nvim
