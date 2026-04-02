return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "OXY2DEV/markview.nvim",
  },

  -- init = function()
  --   vim.env.CC = "clang"
  -- end,

  config = function()
    require("nvim-treesitter").install({
      "bash",
      "css",
      "gitcommit",
      "git_config",
      "gitignore",
      "hyprlang",
      "ini",
      "json",
      "kdl",
      "kitty",
      "lua",
      "markdown",
      "markdown_inline",
      "passwd",
      "powershell",
      "python",
      "query",
      "regex",
      "rust",
      "ssh_config",
      "toml",
      "vim",
      "vimdoc",
      "xresources",
      "yaml",
      "zathurarc",
      "zsh",
    })

    -- enable
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "<filetype>" },
      callback = function()
        vim.treesitter.start()
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
