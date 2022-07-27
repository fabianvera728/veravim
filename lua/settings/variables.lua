-- Variables


local var = vim.g

------ Utils
var.hidden_all = 0
var.mapleader = ' '

------ Prettier
-- var['prettier#autoformat'] = 1

------ Close tags
var['closetag_regions'] = { ['typescript.tsx'] = 'jsxRegion,tsxRegion',
    ['javascript.jsx'] = 'jsxRegion',
    ['typescriptreact'] = 'jsxRegion,tsxRegion',
    ['javascriptreact'] = 'jsxRegion' }

var['everforest_background'] = 'soft'

------ Vim dashboard config
-- var['dashboard_default_executive'] = 'telescope'
-- var['dashboard_custom_section'] = {
--   a = {description = {'📘 New file          SPC f a'}, command = 'new'},
--   b = {description = {'📁 Open explore      SPC f f'}, command = 'NERDTreeToggle'},
--   c = {description = {'📂 Open folder       SPC f f'}, command = 'NERDTreeToggle'},
--   d = {description = {'🕐 Recent files      SPC f r'}, command = 'Telescope oldfiles prompt_prefix=🔍'},
--   e = {description = {'🔍 Find files        SPC f t'}, command = 'Telescope find_files prompt_prefix=🔍'},
--   f = {description = {'🔧 Config            SPC f n'}, command = 'edit ~/.config/nvim/init.vim'},
-- }
-- var['dashboard_custom_header'] = {
--     [[]],
--     [[    ⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄ ]],
--     [[    ⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄ ]],
--     [[   ⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄ ]],
--     [[   ⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄ ]],
--     [[  ⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰ ]],
--     [[  ⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤ ]],
--     [[ ⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗ ]],
--     [[ ⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟  ]],
--     [[ ⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃  ]],
--     [[ ⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃  ]],
--     [[  ⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃   ]],
--     [[   ⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁    ]],
--     [[     ⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁      ]],
--     [[        ⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁     ⢀⣠⣴ ]],
--     [[ ⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿ ]],
--     [[]],
-- }
-- var['dashboard_custom_header'] = {
-- [[🐙 FabianVC - DEV 🐘]]
-- }

-- var['dashboard_custom_footer'] = {[[🐙 FabianVC - DEV 🐘]]}
