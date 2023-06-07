-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine theme
--local lualine_nightfly = require("lualine.themes.nightfly")
local lualine_catppuccin = require("lualine.themes.catppuccin")

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_catppuccin,
  },
})
