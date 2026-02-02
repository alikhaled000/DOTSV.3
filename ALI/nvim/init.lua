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
local dap = require("dap")

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      -- This will ask you for the path to the executable
      -- Or you can hardcode it like: return vim.fn.getcwd() .. '/main'
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}

-- Use the same config for C and Rust
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
