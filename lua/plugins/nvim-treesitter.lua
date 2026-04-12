return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "OXY2DEV/markview.nvim",
  },

  init = function()
    vim.env.CC = "gcc"
  end,

  config = function()
    require("nvim-treesitter").install({
      "bash",
      "css",
      "editorconfig",
      "fish",
      "gitcommit",
      "git_config",
      "gitignore",
      "hyprlang",
      "ini",
      "json",
      "kdl",
      "kitty",
      "passwd",
      "powershell",
      "python",
      "regex",
      "rust",
      "ssh_config",
      "toml",
      "xresources",
      "yaml",
      "zathurarc",
      "zsh",
    })

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
