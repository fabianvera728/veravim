--- CONFIG Telescope


require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        }
    },
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "plugged",
            "pack/github",
            "vendor",
            "fontawesome",
            "odoo-14.0+e.20211014/venv/*",
            "venv",
            -- "i18n",
            "__pycache__",
        }
    },
}

require('telescope').load_extension('fzf')
