-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- Custom Colors:
local colors = {
    darkgray = "#16161d",
    gray = "#727169",
    innerbg = nil,
    outerbg = "#16161D",
    normal = "#7e9cd8",
    insert = "#98bb6c",
    visual = "#ffa066",
    replace = "#e46876",
    command = "#e6c384",
}


-- get lualine theme
-- local lualine_custom = require("lualine.themes.nightfly")
-- local lualine_custom = require("lualine.themes.catppuccin")
local lualine_custom = require("lualine.themes.vscode")
lualine_custom.normal.c.bg = 'None'

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_custom,
  },
})
