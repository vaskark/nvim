local g = vim.g
local o = vim.opt

g.mapleader = " "
g.maplocalleader = " "

o.termguicolors = true
o.laststatus = 2

vim.schedule(function()
  o.clipboard = "unnamedplus"
end)

o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 2
o.tabstop = 2

o.autoindent = true
o.breakindent = true
o.smartindent = true

o.hlsearch = true
o.ignorecase = true
o.smartcase = true

o.cursorline = true
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.wrap = false

o.mouse = "a"
o.scrolloff = 8
o.signcolumn = "yes:1"
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.timeoutlen = 300
o.updatetime = 250
o.undofile = true

o.inccommand = "split"
o.virtualedit = "block"

o.fillchars = {
  eob = " ",
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldinner = " ",
  foldclose = "",
}

o.shortmess:append({ I = true })

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = "󰠠 ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  virtual_text = false,
})
