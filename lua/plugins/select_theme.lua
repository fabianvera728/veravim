-- seleccionar un tema de los que
local Input = require("nui.input")
local event = require("nui.utils.autocmd").event

local input = Input({
    position = "20%",
    size = {
        width = 20,
        height = 2,
    },
    relative = "editor",
    border = {
        style = "single",
        text = {
            top = "How old are you?",
            top_align = "center",
        },
    },
    win_options = {
        winblend = 10,
        winhighlight = "Normal:Normal",
    },
}, {
        prompt = "> ",
        default_value = "42",
        on_close = function()
            print("Input closed!")
        end,
        on_submit = function(value)
            print("You are " .. value .. " years old")
        end,
    })

local function show_input_years_old()
    input:mount()
    input:on(event.BufLeave, function()
        input:unmount()
    end)
end
-- mount/open the component

-- unmount component when cursor leaves buffer
return {
    show_input_years_old = show_input_years_old,
}
