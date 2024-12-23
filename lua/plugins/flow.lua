return {
  "0xstepit/flow.nvim",
  lazy = false,
  priority = 1000,
  tag = "v1.0.0",
  opts = {
    theme = {
      style = "dark", --  "dark" | "light"
      contrast = "default", -- "default" | "high"
      transparent = true, -- true | false
    },
    colors = {
      mode = "default", -- "default" | "dark" | "light"
      fluo = "orange", -- "pink" | "cyan" | "yellow" | "orange" | "green"
    },
    ui = {
      borders = "light", -- "theme" | "inverse" | "fluo" | "none"
      aggressive_spell = false, -- true | false
    },
  },
}
