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
opt.hlsearch = true

opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.wrap = true
opt.cursorline = true

opt.signcolumn = "yes:1"
opt.splitbelow = true
opt.splitright = true
opt.undofile = true
opt.swapfile = false
opt.mouse = "a"
opt.timeoutlen = 300
opt.updatetime = 250
opt.scrolloff = 8

opt.virtualedit = "block"
opt.inccommand = "split"

opt.fillchars = {
  eob = " ",
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldinner = " ",
  foldclose = "",
}

-- no welcome message
opt.shortmess:append({ I = true })
