local opt = vim.opt
local api = vim.api
local cmd = vim.cmd
local g = vim.g

cmd('command! -nargs=* Q wqa <args>')
cmd('command! -nargs=* T NvimTreeToggle <args>')
cmd('command! -nargs=* F Telescope find_files <args>')
cmd('command! -nargs=* B Telescope buffers <args>')
cmd('command! -nargs=* FF Telescope live_grep <args>')

-- This opens file tree if no file is specified
-- vim.cmd([[
--   autocmd StdinReadPre * let s:std_in=1
--   autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NvimTreeToggle | endif
-- ]])

opt.guicursor = ""
opt.encoding = "UTF-8"

-- lsp stuff
api.nvim_set_keymap('n', '<silent> <leader>K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
api.nvim_set_keymap('n', '<silent> gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
api.nvim_set_keymap('n', '<silent> gD', '<cmd>:tab split<CR><cmd>lua vim.lsp.buf.definition()<CR>', {})
api.nvim_set_keymap('n', '<silent> gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
cmd('command! -nargs=* Rn lua vim.lsp.buf.rename() <args>')
cmd('command! -nargs=* Fm lua vim.lsp.buf.format() <args>')

g.steep_path = "~/Steepfile"
