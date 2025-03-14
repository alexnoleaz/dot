return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "powershell-editor-services" } },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = { ensure_installed = { "powershell_es" } },
  },
  { "PProvost/vim-ps1", ft = "ps1" },
}
