if true then
  return {}
end
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "harper-ls",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        harper_ls = {
          settings = {
            ["harper-ls"] = {
              dialect = "Amarican",
              -- Put your personal dictionary here.
              userDictPath = "~/.config/harper-ls/dictionary.txt",

              -- Let projects have their own dictionary too.
              workspaceDictPath = "",
            },
          },
        },
      },
    },
  },
}
