local map = vim.keymap.set

-- save
map("n", "<C-s>", "<cmd> w <cr>")
map("i", "<C-s>", "<cmd> w <cr>")

-- exit insert mode
map("i", "jk", "<esc>", { desc = "Exit insert mode" })

-- copy all
map("n", "<C-c>", "<cmd> %y+ <cr>")

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>", { desc = "Increment number" })
map("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- buffers
map("n", "<Tab>", "<cmd> bnext <cr>", { desc = "Buffer next" })
map("n", "<S-Tab>", "<cmd> bprevious <cr>", { desc = "Buffer previous" })
map("n", "<leader>bd", "<cmd> bdelete <cr>", { desc = "Buffer delete" })

-- clear search highlighting
map("n", "<esc>", "<cmd> noh <return> <esc>")

-- split navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })

-- toggleterm
map("n", "<leader>th", "<cmd> ToggleTerm direction=horizontal <cr>", { desc = "Horizontal terminal" })
map("n", "<leader>tv", "<cmd> ToggleTerm direction=vertical size=50 <cr>", { desc = "Vertical terminal" })
