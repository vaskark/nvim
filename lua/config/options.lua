-- global
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- local
local opt = vim.opt

opt.termguicolors = true
opt.laststatus = 2

vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)

opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.hlsearch = true

opt.cursorline = true

opt.number = true
opt.relativenumber = true
opt.wrap = true

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.undofile = true

opt.timeoutlen = 300
opt.updatetime = 250

opt.scrolloff = 999

opt.virtualedit = "block"
opt.inccommand = "split"

opt.fillchars = "eob: "

opt.foldcolumn = "1" -- '0' is not bad
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath("data") .. "/mason/bin"

-- diagnostics
vim.diagnostic.config({
  virtual_lines = true,
})
