return {
  "MeanderingProgrammer/render-markdown.nvim",
  -- ✅ Only load for markdown files
  ft = { "markdown", "mdx" },
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  opts = {
    heading = {
      enabled = true,
      sign = true,
      style = "full",
      icons = { "① ", "② ", "③ ", "④ ", "⑤ ", "⑥ " },
      left_pad = 1,
    },
    bullet = {
      enabled = true,
      icons = { "●", "○", "◆", "◇" },
      right_pad = 1,
      highlight = "render-markdownBullet",
    },
  },
}
