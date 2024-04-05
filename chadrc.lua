---@type ChadrcConfig
local M = {}

M.ui = { 
    theme = 'github_dark',
    tabufline = {
        enabled = false,
    }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
