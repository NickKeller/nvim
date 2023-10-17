local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "pyright",
        "yaml-language-server",
        "rust-analyzer",
                "autopep8",
                "buf-language-server",
                "debugpy",
                "delve",
                "gofumpt",
                "golines",
                "golangci-lint",
                "lua-language-server",
               "luaformatter", 
                "prettier",
                "pylint",
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig-go"
      require "custom.configs.lspconfig-yaml"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            return require "custom.configs.nvtree"
        end
    },
    {
        "theprimeagen/harpoon"

    }
}
return plugins
