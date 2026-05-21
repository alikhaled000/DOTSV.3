return {
  "alexghergh/nvim-tmux-navigation",
  -- ✅ Load only when a tmux navigation key is pressed
  lazy = true,
  keys = {
    { "<C-h>", "<C-j>", "<C-k>", "<C-l>", "<C-\\>", "<C-Space>" },
  },
}
