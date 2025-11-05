-- colorschemes
vim.cmd([[autocmd ColorScheme * highlight StatusLine guibg=none]])
vim.cmd([[autocmd ColorScheme * highlight Normal guibg=none]])

-- simple LSP progress
vim.api.nvim_create_autocmd("LspProgress", {
  ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
  callback = function(ev)
    local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    vim.notify(vim.lsp.status(), "info", {
      id = "lsp_progress",
      title = "LSP Progress",
      opts = function(notif)
        notif.icon = ev.data.params.value.kind == "end" and " "
          or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
      end,
    })
  end,
})

-- restore cursor pos on file open
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line("'\"")
    if line > 1 and line <= vim.fn.line("$") then
      vim.cmd("normal! g'\"")
    end
  end,
})

-- auto resize splits when the terminal's window is resized
vim.api.nvim_create_autocmd("VimResized", {
  command = "wincmd =",
})

-- help buffers open to the right
vim.api.nvim_create_autocmd("FileType", {
  desc = "Automatically Split help Buffers to the right",
  pattern = "help",
  command = "wincmd L",
})

-- spellcheck in md
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  command = "setlocal spell wrap",
})

-- disable automatic comment on newline
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.hl.on_yank({ timeout = 300 })
  end,
})
