local g = vim.g
local map = vim.keymap.set

-- leader
g.mapleader = " "
g.maplocalleader = " "

-- save
map({ "n", "i" }, "<C-s>", "<cmd> w <cr>", { desc = "Save File" })

-- exit insert mode
map("i", "jj", "<esc>", { desc = "Exit Insert Mode" })

-- copy all
map("n", "<C-c>", "<cmd> %y+ <cr>", { desc = "Copy All Text" })

-- buffers
map("n", "<Tab>", "<cmd> bnext <cr>", { desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd> bprevious <cr>", { desc = "Previous Buffer" })

-- clear search highlighting
map("n", "<esc>", "<cmd> nohlsearch <cr> <esc>")

-- split navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move Focus to Left Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move Focus to Lower Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move Focus to Upper Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move Focus to Right Window" })

-- restart
vim.keymap.set("n", "<leader>R", function()
  local session = vim.fn.stdpath("state") .. "/restart_session.vim"
  vim.cmd("mksession! " .. vim.fn.fnameescape(session))
  vim.cmd("restart source " .. vim.fn.fnameescape(session))
end, { desc = "Restart neovim" })