-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8,sjis,euc-jp,latin1" -- For reading files with different encodings
require("config.lazy")
require("plugins.colorscheme")
