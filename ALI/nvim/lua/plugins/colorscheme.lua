return {
  -- 1. The Transparency Plugin (ENABLED)
  {
    "xiyaowong/transparent.nvim",
    lazy = false, -- Load immediately to prevent flickering
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

  -- 2. Gruvbox Plugin
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      transparent_mode = true,
    },
  },

  -- 3. Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },

  -- 4. Kanagawa & Others
  { "Gentleman-Programming/gentleman-kanagawa-blur", priority = 1000 },
  { "Alan-TheGentleman/oldworld.nvim", priority = 1000 },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = { transparent = true },
  },

  -- 5. Set default colorscheme to Gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
