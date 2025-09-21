return {
  { "p00f/nvim-ts-rainbow" },
  { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate", config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "rust", "java", "json", "bash", "markdown", "markdown_inline" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
}

