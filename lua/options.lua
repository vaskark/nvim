local opt = vim.opt

vim.g.mapleader = " "

opt.laststatus = 3 -- global statusline
-- opt.statusline = " %f %m %= %l:%c ♥ "
opt.showmode = false

opt.clipboard = "unnamedplus"

opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.number = true
opt.relativenumber = true
opt.ruler = false
opt.wrap = false

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.undofile = true

opt.timeoutlen = 400
opt.updatetime = 250

opt.scrolloff = 999

opt.virtualedit = "block"
opt.inccommand = "split"

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath("data") .. "/mason/bin"
