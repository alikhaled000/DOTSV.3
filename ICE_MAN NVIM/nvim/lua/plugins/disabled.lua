-- Plugins explicitly disabled

return {
  -- Disable bufferline (using snacks tabs instead)
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  -- smear-cursor: keep enabled but loaded lazily (see smear.lua)
  {
    "sphamba/smear-cursor.nvim",
    enabled = true,
  },
}
