--
-- Overridding default config of chad --
--

--
-- Use for
-- -- NvChad Options
-- -- Plugins
--

---@type ChadrcConfig 
local M = {}

M.ui = {
    transparency = true,
    theme = 'everforest',
    statusline = {
        separator_style = "round"
    }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
