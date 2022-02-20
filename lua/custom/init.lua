-- This is an example init file , its supposed to be placed in /lua/custom dir
-- lua/custom/init.lua

-- This is where your custom modules and plugins go.
-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
vim.cmd[[ au InsertEnter * set norelativenumber ]]
vim.cmd[[ au InsertLeave * set relativenumber ]]
