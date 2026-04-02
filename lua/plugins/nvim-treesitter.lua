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

    -- run TSUpdate whenever nvim-treesitter updates
    vim.api.nvim_create_autocmd("PackChanged", {
      desc = "Handle nvim-treesitter updates",
      group = vim.api.nvim_create_augroup("nvim-treesitter-pack-changed-update-handler", { clear = true }),
      callback = function(event)
        if event.data.kind == "update" and event.data.spec.name == "nvim-treesitter" then
          vim.notify("nvim-treesitter updated, running TSUpdate...", vim.log.levels.INFO)
          ---@diagnostic disable-next-line: param-type-mismatch
          local ok = pcall(vim.cmd, "TSUpdate")
          if ok then
            vim.notify("TSUpdate completed successfully!", vim.log.levels.INFO)
          else
            vim.notify("TSUpdate command not available yet, skipping", vim.log.levels.WARN)
          end
        end
      end,
    })
  end,
}
