return {
  -- theme
  { "Mofiqul/vscode.nvim", config = function() vim.cmd.colorscheme "vscode" end },

  -- status line
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() require("lualine").setup({ options = { theme = "vscode" } }) end
  },

  -- file tree
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() require("nvim-tree").setup() end
  },

  -- buffer line
  { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons",
    config = function() require("bufferline").setup() end
  },

  -- cursor enhancements
  { "sphamba/smear-cursor.nvim",
    opts = {
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = true,
      smear_insert_mode = true,
    },
  },
  { "karb94/neoscroll.nvim", config = function() require("neoscroll").setup() end },
}

