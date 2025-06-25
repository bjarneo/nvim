-- Example: in a file like lua/plugins/override-formatting.lua
return {
  {
    "stevearc/conform.nvim",
    -- Ensure this overrides the default LazyVim extra configuration or is correctly merged.
    -- If the extra already sets up conform.nvim, you might be modifying its `opts` function.
    opts = function(_, opts)
      -- Ensure formatters_by_ft table exists
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      -- Disable for handlebars
      opts.formatters_by_ft.handlebars = { "false" }

      -- If the LazyVim Prettier extra adds "prettier" to many filetypes,
      -- this explicit override for "handlebars" will take precedence for .hbs files.
    end,
  },
}
