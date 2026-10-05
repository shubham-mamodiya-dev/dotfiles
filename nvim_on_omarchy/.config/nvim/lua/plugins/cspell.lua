return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "cspell-lsp",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cspell_ls = {
          cmd = {
            "cspell-lsp",
            "--stdio",
            "--config",
            vim.fn.expand("~/.config/cspell/cspell.json"),
          },
        },
      },
    },
  },
}
