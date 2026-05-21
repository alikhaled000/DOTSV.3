return {
  {
    -- Consider replacing with vim-visual-multi (actively maintained)
    -- "mg979/vim-visual-multi"
    "terryma/vim-multiple-cursors",
    -- ✅ Only load when actually used
    keys = {
      { "<C-n>", mode = { "n", "v" } },
      { "<C-p>", mode = { "n", "v" } },
      { "<C-x>", mode = { "n", "v" } },
    },
  },
}
