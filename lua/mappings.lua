local map = vim.keymap.set

-- save
map("n", "<C-s>", "<cmd> w <cr>")
map("i", "<C-s>", "<cmd> w <cr>")

-- copy all
map("n", "<C-c>", "<cmd> %y+ <cr>")

-- buffers
map("n", "<Tab>", "<cmd> bnext <cr>", { desc = "Buffer next" })
map("n", "<S-Tab>", "<cmd> bprevious <cr>", { desc = "Buffer previous" })
map("n", "<leader>bd", "<cmd> bdelete <cr>", { desc = "Buffer delete" })

-- clear search highlighting
map("n", "<esc>", "<cmd> noh <return> <esc>")
