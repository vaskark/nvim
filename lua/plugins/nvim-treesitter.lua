return {
  "nvim-treesitter/nvim-treesitter",
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

    -- vim.api.nvim_create_autocmd("FileType", {
    --   pattern = {
    --     "bash",
    --     "css",
    --     "gitcommit",
    --     "git_config",
    --     "gitignore",
    --     "hyprlang",
    --     "ini",
    --     "json",
    --     "kdl",
    --     "kitty",
    --     "lua",
    --     "markdown",
    --     "markdown_inline",
    --     "passwd",
    --     "powershell",
    --     "python",
    --     "query",
    --     "regex",
    --     "rust",
    --     "ssh_config",
    --     "toml",
    --     "vim",
    --     "vimdoc",
    --     "xresources",
    --     "yaml",
    --     "zathurarc",
    --     "zsh",
    --   },
    --   callback = function()
    --     vim.treesitter.start()
    --     vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    --     vim.wo.foldmethod = "expr"
    --     vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    --   end,
    -- })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        if pcall(vim.treesitter.start) then
          vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
          vim.wo.foldmethod = "expr"
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })

    vim.api.nvim_create_autocmd("PackChanged", {
      callback = function(ev)
        local name, kind = ev.data.spec.name, ev.data.kind
        if name == "nvim-treesitter" and (kind == "install" or kind == "update") then
          if not ev.data.active then
            vim.cmd.packadd("nvim-treesitter")
          end
          vim.cmd("TSUpdate")
        end
      end,
    })
  end,
}
