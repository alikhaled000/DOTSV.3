return {
  -- 1. Transparency plugin - needs lazy=false to prevent flicker
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 1100,
    opts = {
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "NeoTreeNormal",
        "TelescopeNormal",
        "TelescopeBorder",
        "LSPSagaHoverTarget",
      },
    },
  },

  -- 2. Active colorscheme - gruvbox (lazy=false, high priority)
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_mode = true,
    },
  },

  -- 3. Inactive colorschemes - all lazy=true so they don't load at startup
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },

  { "Gentleman-Programming/gentleman-kanagawa-blur", lazy = true, priority = 1000 },
  { "Alan-TheGentleman/oldworld.nvim", lazy = true, priority = 1000 },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = { transparent = true },
  },

  -- 4. Set default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
