--general vim config
require 'vim-stuff'

--lazy install
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

--require('lazy').setup 'plugins'
require('lazy').setup("plugins")
--
-- The line beneath this is called `modeline`. See `:help modeline`
--
--
--
--
--
-- vim: ts=2 sts=2 sw=2 et
