return {
  { "simrat39/rust-tools.nvim", dependencies = "neovim/nvim-lspconfig",
    config = function()
      require("rust-tools").setup({})
    end
  },
  { "mfussenegger/nvim-jdtls" },
}
