if true then
  return {}
end
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "codebook",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        codebook = {},
      },
    },
  },
}
