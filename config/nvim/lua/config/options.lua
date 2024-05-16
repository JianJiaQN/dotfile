-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g["suda_smart_edit"] = 1

local opt = vim.opt

opt.encoding = "UTF-8"
opt.fileencoding = "utf-8"
opt.signcolumn = "yes"
opt.signcolumn = "yes"

if vim.fn.has("wsl") then
  vim.cmd([[
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
  ]])
end
-- override:
-- opt.shiftwidth = 4 -- Size of an indent
-- opt.tabstop = 4 -- Number of spaces tabs count for
-- opt.winbar = "%=% %f"
