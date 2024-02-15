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

-- zen-mode
map("n", "<leader>zm", "<cmd> ZenMode <CR>")

-- comment
map("n", "<leader>/", function()
	require("Comment.api").toggle.linewise.current()
end)

map("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- telescope
map("n", "<leader>fb", "<cmd> Telescope buffers theme=ivy <cr>", { desc = "List buffers" })
map("n", "<leader>ff", "<cmd> Telescope find_files hidden=true <cr>", { desc = "Find files" })
map("n", "<leader>fo", "<cmd> Telescope oldfiles <cr>", { desc = "Recent files" })
map("n", "<leader>fs", "<cmd> Telescope grep_string <cr>", { desc = "String search" })
map("n", "<leader>fw", "<cmd> Telescope live_grep <cr>", { desc = "Live text search" })
map("n", "<leader>fz", "<cmd> Telescope current_buffer_fuzzy_find <cr>", { desc = "Current buffer text search" })

map("n", "<leader>tb", "<cmd> Telescope <cr>", { desc = "Telescope" })
map("n", "<leader>tc", "<cmd> Telescope colorscheme <cr>", { desc = "Colorschemes" })

-- neotree
map("n", "<C-n>", "<cmd> Neotree toggle <cr>")

-- noice
map("n", "<leader>nd", "<cmd> NoiceDismiss <cr>", { desc = "Noice dismiss" })
map("n", "<leader>nh", "<cmd> NoiceHistory <cr>", { desc = "Noice history" })
map("n", "<leader>nt", "<cmd> NoiceTelescope <cr>", { desc = "Noice telescope" })

-- lazygit
map("n", "<leader>lg", "<cmd> Telescope lazygit <cr>", { desc = "LazyGit" })
