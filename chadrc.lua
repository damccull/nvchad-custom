---@type ChadrcConfig 
local M = {}

-- Path to overriding theme and highlights Files
local highlights = require "custom.highlights"

M.ui = {
    theme = 'chadracula',
      nvdash = {
        load_on_startup = false,

        -- header = {
        -- },
      }
}

-- Path to custom plugins
M.plugins = 'custom.plugins'

-- Path to custom keymaps
M.mappings = require "custom.mappings"

return M

