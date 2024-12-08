local map = vim.keymap.set

-- save
map({ "n", "i" }, "<C-s>", "<cmd> w <cr>")

-- reload
map("n", "<leader><leader>r", "<cmd> source % <cr>", { desc = "Reload file" })

-- exit insert mode
map("i", "jk", "<esc>", { desc = "Exit insert mode" })

-- copy all
map("n", "<C-c>", "<cmd> %y+ <cr>")

-- buffers
map("n", "<Tab>", "<cmd> bnext <cr>", { desc = "Buffer next" })
map("n", "<S-Tab>", "<cmd> bprevious <cr>", { desc = "Buffer previous" })

-- clear search highlighting
map("n", "<esc>", "<cmd> nohlsearch <return> <esc>")

-- split navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })
