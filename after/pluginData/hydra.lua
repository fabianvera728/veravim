--- Hydra configuration


local ok, Hydra = pcall(require, "hydra")
if not ok then
    return
end

Hydra({
    name = "Panels mode",
    mode = 'n',
    body = 't',
    heads = {
        { '<M-h>', '<C-w>3<' },
        { '<M-l>', '<C-w>3>' },
        { '<M-k>', '<C-w>3-' },
        { '<M-j>', '<C-w>3+' },
        { 'x', ':close<cr>' },
        { 'z', ':split<cr>' },
        { 'v', ':vsplit<cr>' },
        { 'a', '<C-w><C-h>' },
        { 'f', '<C-w><C-l>' },
        { 's', '<C-w><C-j>' },
        { 'd', '<C-w><C-k>' },
        -- { 'g', ':bnext<cr>' },
    },
})
Hydra({
    name = "Move in panels mode",
    mode = 'n',
    body = 'F',
    heads = {
        { 'h', '<C-w><C-h>' },
        { 'l', '<C-w><C-l>' },
        { 'j', '<C-w><C-j>' },
        { 'k', '<C-w><C-k>' },
    },
})
Hydra({
    name = "Move code",
    mode = 'v',
    body = 't',
    heads = {
        { 'k', ':MoveBlock(-1)<CR>' },
        { 'j', ':MoveBlock(1)<CR>' },
        { '>', '>gv' },
        { '<', '<gv' },
    },
})
