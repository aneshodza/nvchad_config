local opt = vim.opt

vim.cmd('command! -nargs=* Q wqa <args>')
vim.cmd('command! -nargs=* T NvimTreeToggle <args>')
vim.cmd('command! -nargs=* F Telescope find_files <args>')
vim.cmd('command! -nargs=* B Telescope buffers <args>')
vim.cmd('command! -nargs=* FF Telescope live_grep <args>')
vim.cmd([[
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NvimTreeToggle | endif
]])

opt.guicursor = ""
opt.encoding = "UTF-8"
