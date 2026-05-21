-- Neo-tree configuration - replaces the eager require("neo-tree") in init.lua

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- ✅ Configured here, not in init.lua — loads lazily via LazyVim defaults
    opts = {
      window = {
        position = "right",
      },
    },
  },
}
