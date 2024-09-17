return {
  { "rebelot/kanagawa.nvim" },

  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup({

        enable = {
          terminal = true,
        },

        styles = {
          transparency = true,
        },
      })

      vim.cmd("colorscheme rose-pine-main")
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-main",
    },
  },
}
