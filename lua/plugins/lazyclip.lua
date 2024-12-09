return {
  "atiladefreitas/lazyclip",
  config = function()
    require("lazyclip").setup()
  end,
  keys = {
    { "Cm", desc = "Open clipboard manager" },
  },
  -- Optional: Load plugin when yanking text
  event = { "TextYankPost" },
}
