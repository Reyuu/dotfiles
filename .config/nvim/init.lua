local vim = vim
home = os.getenv("HOME")
config_path = home .. "/.config/nvim/"

vim.wo.number = true
vim.opt.encoding="utf-8"
vim.opt.scrolloff = 7
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.fileformat = "unix"
vim.opt.cursorline = true

local Plug = vim.fn['plug#']

vim.call('plug#begin')
require("plugs")
vim.call('plug#end')

require("theme")
require("plugins")
require("keymaps")

