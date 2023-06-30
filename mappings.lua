---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- lsp-keybinds
    ["<leader>K"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show hover" },
    ["<leader>fm"] = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format" },
    ["<leader>rn"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
    ["<leader>fi"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Autofix" },
    ["<leader>gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to implementation" },
    ["<leader>gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition" },

    -- vimtex stuff
    ["<leader>lc"] = { ":VimtexCompile<CR>", "Compile latex document" },
    ["<leader>lo"] = { ":VimtexView<CR>", "View latex output" },
  },

  i = {
    ["<Tab>"] = { "<Tab>", "insert a tab character" },
  },
}

return M
