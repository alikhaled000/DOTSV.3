-- Configure Node.js before loading plugins
require("config.nodejs").setup({ silent = true })
vim.g.node_host_prog = "/usr/bin/node"
vim.g.loaded_node_provider = 0
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
require("neo-tree").setup({
  window = {
    position = "right",
  },
})
