local map = vim.keymap.set

-- save
map({ "n", "i" }, "<C-s>", "<cmd> w <cr>", { desc = "Save File" })

-- reload
map("n", "<leader><leader>r", "<cmd> source % <cr>", { desc = "Reload File" })

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
map("n", "<C-l>", "<C-w>l", { desc = "Move Focus to Right Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move Focus to Lower Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move Focus to Upper Window" })
