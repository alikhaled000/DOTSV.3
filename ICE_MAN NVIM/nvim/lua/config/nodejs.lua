-- Updated nodejs.lua
-- Fixes the "node /usr/bin/node" execution error using table-based system calls

local M = {}

local function get_system_node()
  -- Priority order for system Node.js
  local system_paths = {
    "/opt/homebrew/bin/node",
    "/usr/local/bin/node",
    "/usr/bin/node",
    vim.fn.expand("~/.volta/bin/node"),
    vim.fn.expand("~/.nix-profile/bin/node"),
  }

  -- Check static paths first
  for _, path in ipairs(system_paths) do
    if vim.fn.executable(path) == 1 then
      return path
    end
  end

  -- Check NVM specifically (handles the globbing more safely)
  local nvm_glob = vim.fn.expand("~/.nvm/versions/node/*/bin/node")
  local nvm_paths = vim.fn.glob(nvm_glob, false, true)
  if #nvm_paths > 0 then
    table.sort(nvm_paths, function(a, b)
      return a > b
    end)
    return nvm_paths[1]
  end

  -- Final fallback to current PATH
  return vim.fn.exepath("node")
end

local function setup_nodejs()
  local node_path = get_system_node()

  if node_path == "" then
    vim.notify("⚠️ Node.js not found in system paths.", vim.log.levels.ERROR)
    return false, nil
  end

  -- FIX: Use a TABLE instead of a STRING to prevent double-execution errors
  local version_output = vim.fn.system({ node_path, "--version" })

  if vim.v.shell_error == 0 then
    local version = version_output:gsub("[%s\r\n]", ""):gsub("^v", "")
    local major_version = tonumber(version:match("^(%d+)"))

    if major_version and major_version >= 18 then
      vim.g.node_host_prog = node_path

      local npm_path = vim.fn.exepath("npm")
      if npm_path ~= "" then
        vim.g.npm_host_prog = npm_path
      end

      if vim.g.debug_nodejs then
        print("✓ Node.js Path: " .. node_path .. " (v" .. version .. ")")
      end
      return true, version
    else
      -- Version too old logic
      local msg = "⚠️ Node.js v" .. version .. " is too old. Nvim requires v18+.\nPath: " .. node_path
      vim.notify(msg, vim.log.levels.WARN)
      vim.g.node_host_prog = node_path
      return true, version
    end
  end

  return false, nil
end

function M.setup(opts)
  opts = opts or {}
  local success, version = setup_nodejs()
  return success
end

function M.info()
  if not vim.g.node_host_prog then
    print("Node.js: Not configured")
    return
  end
  print("Node.js for Neovim: " .. vim.g.node_host_prog)
  print("npm path: " .. (vim.g.npm_host_prog or "Not found"))
end

-- Commands
vim.api.nvim_create_user_command("NodeRefresh", function()
  M.setup()
  M.info()
end, { desc = "Refresh Node.js configuration" })

vim.api.nvim_create_user_command("NodeInfo", function()
  M.info()
end, { desc = "Show Node.js configuration info" })

return M
