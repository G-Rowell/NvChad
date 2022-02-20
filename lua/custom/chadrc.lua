-- This is an example chadrc file , its supposed to be placed in /lua/custom dir
-- lua/custom/chadrc.lua

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  relativenumber = true,
  shiftwidth = 3,
}

M.plugins = {
   install = {
     {
       "williamboman/nvim-lsp-installer",
       config = function()
         require("custom.lspInstall")
       end,
     },
  },
}

return M
