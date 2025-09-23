return {
  { "simrat39/rust-tools.nvim", dependencies = "neovim/nvim-lspconfig",
    ft = { "rust" },
    config = function()
      require("rust-tools").setup({})
    end
  },
  { "mfussenegger/nvim-jdtls", ft = "java" },
  {
    "nvim-java/nvim-java",
    ft = { "java" },
    config = function()
      require("java").setup({})
      require('lspconfig').jdtls.setup({})
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    ft = { "rust" },
    version = '^6', 
    lazy = true, 
  },
}
