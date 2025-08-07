return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = ">",
          },
          style = "#806d9c",
        },
      })
    end,
  },
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
  {
    "f-person/auto-dark-mode.nvim",
    config = function()
      require("auto-dark-mode").setup({
        set_dark_mode = function()
          -- Your dark mode setup
          vim.o.background = "dark"
          vim.cmd("colorscheme ash")
          -- You can also set other options here, like for a statusline
        end,
        set_light_mode = function()
          -- Your light mode setup
          vim.o.background = "light"
          vim.cmd("colorscheme snow")
          -- You can also set other options here
        end,
      })
    end,
  },
}
