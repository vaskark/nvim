return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-ui-select.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
            ["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
            ["<C-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
          },
        },
      },
      -- pickers = {
      --   find_files = {
      --     theme = "dropdown",
      --   },
      -- },
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
        -- ["ui-select"] = {
        --   require("telescope.themes").get_dropdown(),
        -- },
      },
    })

    -- require("telescope").load_extension("ui-select")
    require("telescope").load_extension("fzf")

    vim.keymap.set("n", "<leader>fa", "<cmd> Telescope find_files hidden=true <cr>", { desc = "Find all files" })
    vim.keymap.set("n", "<leader>fb", "<cmd> Telescope buffers theme=ivy <cr>", { desc = "List buffers" })
    vim.keymap.set("n", "<leader>ff", "<cmd> Telescope find_files <cr>", { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", "<cmd> Telescope live_grep <cr>", { desc = "Live text search" })
    vim.keymap.set("n", "<leader>fh", "<cmd> Telescope help_tags <cr>", { desc = "Search help" })
    vim.keymap.set("n", "<leader>fr", "<cmd> Telescope oldfiles <cr>", { desc = "Recent files" })
    vim.keymap.set("n", "<leader>fs", "<cmd> Telescope grep_string <cr>", { desc = "String search" })
    vim.keymap.set(
      "n",
      "<leader>fz",
      "<cmd> Telescope current_buffer_fuzzy_find <cr>",
      { desc = "Current buffer text search" }
    )
    vim.keymap.set("n", "<leader>fc", function()
      require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "Find Neovim files" })
    vim.keymap.set("n", "<leader>tb", "<cmd> Telescope <cr>", { desc = "Telescope" })
    vim.keymap.set("n", "<leader>tc", "<cmd> Telescope colorscheme <cr>", { desc = "Colorschemes" })
  end,
}
