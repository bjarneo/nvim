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

      -- vim.cmd("colorscheme rose-pine-main")
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      --      colorscheme = "rose-pine-main",
      -- colorscheme = "zero",
      -- colorscheme = "darkvoid",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
      terminal_colors = true,
      palette_overrides = {
        -- Your existing background overrides
        -- dark0_hard = "#111827",
        -- dark0 = "#111827",
        -- dark0_soft = "#111827",
        -- dark1 = "#111827",
        -- dark2 = "#111827",
        -- dark3 = "#111827", -- If this was #111827, Visual's default bg would be #111827
        -- dark4 = "#111827",
        -- ... any other palette overrides you have
      },
      overrides = {
        -- [[ BRIGHTER LINE NUMBERS ]]
        LineNr = { fg = "#a89984" }, -- Using Gruvbox light4 for brighter line numbers
        -- (Optional) For the line number of the current line, if you want it different:
        -- CursorLineNr = { fg = "#fabd2f", bg = colors.bg1 }, -- Gruvbox bright_yellow (original default was yellow on bg1)
        -- If colors.bg1 is now #111827, you might want:
        -- CursorLineNr = { fg = "#fabd2f", bg = "#2e3440" }, -- Example: yellow on a slightly different dark bg

        -- [[ BRIGHTER INDENT GUIDES ('|') ]]
        -- Choose the one relevant to your setup:
        -- IndentBlanklineChar = { fg = "#a89984" }, -- For indent-blankline.nvim
        -- MiniIndentscopeSymbol = { fg = "#a89984" }, -- For mini.indentscope
        -- Whitespace = { fg = "#a89984" },            -- For listchars based guides
        -- IndentBlanklineIndent = { fg = "#a89984" },
        -- IndentBlanklineIndent1 = { fg = "#a89984" }, -- If using char_highlight_list
        -- IndentBlanklineSpaceChar = { fg = "#a89984" }, -- For indent chars in blank spaces
        -- (Optional) If you want active indent scope guides to be different:
        -- IndentBlanklineContextChar = { fg = "#bdae93" }, -- Gruvbox light3 for a slightly different brightness

        -- [[ COLOR FOR VISUAL SELECTION ]]
        Visual = { bg = "#504945" }, -- Selection background

        -- [[ OTHER OVERRIDES ]]
        -- Comment = { fg = "#928374" },
      },
    },
  },
}
