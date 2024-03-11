File = require("remember-stuff.file")


local Remember = {}

function Remember.setup()
    File:setup()
end

-- function M.createWindow()
--     -- Define the window configuration
--     local config = {
--         relative = 'editor', -- Position relative to the current window
--         width = 40,
--         height = 10,
--         row = 5,
--         col = 5,
--         style = 'minimal' -- Border style
--     }
--
--     -- Create a new buffer for the window
--     local buf = vim.api.nvim_create_buf(false, true)
--
--     -- Set some text in the new buffer
--     vim.api.nvim_buf_set_lines(buf, 0, -1, false, { 'Hello from new window!', 'This is a new window created with Lua.' })
--
--     -- Open the new window with the specified configuration and buffer
--     local win = vim.api.nvim_open_win(buf, true, config)
-- end

return Remember
