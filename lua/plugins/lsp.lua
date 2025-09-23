return {
  -- Mason: LSP/DAP/tool installer
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    enable = function()
      -- Lua
      vim.lsp.config('lua_ls', {})
      vim.lsp.enable('lua_ls')

      -- Python
      vim.lsp.config('pyright', {})
      vim.lsp.enable('pyright')
    end,
  },
}

