return {
  "atiladefreitas/lazyclip",
  config = function()
    require("lazyclip").setup()
  end,
  keys = {
    { "<leader>cw", desc = "Open Clipboard Manager" },
  },
  -- event = { "TextYankPost" },
}
