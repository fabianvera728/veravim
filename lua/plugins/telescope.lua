--- CONFIG Telescope


require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "plugged",
            "pack/github",
            "vendor",
            "fontawesome",
            "odoo-14.0+e.20211014/venv1/*",
            "venv1",
            -- "i18n",
            "__pycache__",
        }
    },
}
