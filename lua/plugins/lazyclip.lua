return {
  "atiladefreitas/lazyclip",
  config = function()
    require("lazyclip").setup()
  end,
  keys = {
    { "Cw", desc = "Open clipboard manager" },
  },
  -- Optional: Load plugin when yanking text
  event = { "TextYankPost" },
}
