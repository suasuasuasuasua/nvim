-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.o.cc = '80,81'
vim.o.textwidth = 80
vim.o.conceallevel = 2

return {
  -- Escape easier with jk
  vim.keymap.set('i', 'jk', '<Esc>'),
}
