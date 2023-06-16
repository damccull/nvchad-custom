---@type ChadrcConfig 
local M = {}
M.ui = {
    theme = 'chadracula',
      nvdash = {
        load_on_startup = false,

        -- header = {
        -- },
      }
}

M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"
return M
