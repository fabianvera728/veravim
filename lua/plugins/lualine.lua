--- CONFIG - lualine

-- Function para obtener la direccion del buffer actual
local function get_current_buffer()
    local win = vim.api.nvim_get_current_win()
    local buf = vim.api.nvim_win_get_buf(win)
    return buf
end

-- funcion para obtener la ruta del buffer actual
local function get_current_buffer_path()
    local buf = get_current_buffer()
    local path = vim.api.nvim_buf_get_name(buf)
    return path
end

-- Obtener el nombre del directorio de trabajo
local function get_cwd_name()
    local cwd = vim.fn.getcwd()
    return cwd
end

-- obtener la diferencia entre dos rutas
local function get_path_diff(path1, path2)
    local path_diff = path1:gsub(path2, "")
    return path_diff
end

-- funcion para obtener la ruta desde el directorio actual hasta el directorio de trabajo
local function get_current_buffer_path_from_cwd()
    local cwd = get_cwd_name()
    local path = get_current_buffer_path()
    local path_diff = get_path_diff(path, cwd)
    return path_diff .. " 📂"
end

require('lualine').setup({
    options = {
        theme = 'auto',
        component_separators = { left = '🦀', right = '🐬' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { get_current_buffer_path_from_cwd },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
})
