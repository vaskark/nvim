return {

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      pickers = {
        find_files = {
          find_command = {
            "rg",
            "--files",
            "--smart-case",
            "-g",
            "!**/.cache/*",
            "-g",
            "!**/.git/*",
          },
        },
      },
    },
    vim.keymap.set("n", "<leader>fb", "<cmd> Telescope buffers theme=ivy <cr>", { desc = "List buffers" }),
    vim.keymap.set("n", "<leader>fa", "<cmd> Telescope find_files hidden=true <cr>", { desc = "Find all files" }),
    vim.keymap.set("n", "<leader>ff", "<cmd> Telescope find_files <cr>", { desc = "Find files" }),
    vim.keymap.set("n", "<leader>fo", "<cmd> Telescope oldfiles <cr>", { desc = "Recent files" }),
    vim.keymap.set("n", "<leader>fs", "<cmd> Telescope grep_string <cr>", { desc = "String search" }),
    vim.keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep <cr>", { desc = "Live text search" }),
    vim.keymap.set(
      "n",
      "<leader>fz",
      "<cmd> Telescope current_buffer_fuzzy_find <cr>",
      { desc = "Current buffer text search" }
    ),

    vim.keymap.set("n", "<leader>tb", "<cmd> Telescope <cr>", { desc = "Telescope" }),
    vim.keymap.set("n", "<leader>tc", "<cmd> Telescope colorscheme <cr>", { desc = "Colorschemes" }),
  },

  -- telescope-ui-select
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
