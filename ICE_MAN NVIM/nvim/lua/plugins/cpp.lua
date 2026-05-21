-- C / C++ full setup: LSP (clangd), formatter (clang-format), Mason auto-install

return {
  -- 1. LSP: clangd via nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = true,
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "CMakeLists.txt",
              "compile_commands.json",
              "compile_flags.txt",
              ".git"
            )(fname)
          end,
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },
      },
    },
  },

  -- 2. Formatter: clang-format via conform.nvim
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
      formatters = {
        clang_format = {
          prepend_args = { "--style=LLVM" },
        },
      },
    },
  },

  -- 3. Treesitter: ensure C/C++ parsers are installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "c", "cpp", "cmake" })
    end,
  },

  -- 4. Mason: auto-install clangd via mason-lspconfig (avoids referencing mason directly)
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "clangd" })
    end,
  },
}
