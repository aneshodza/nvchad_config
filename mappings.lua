---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },

  i = {
    ["<Tab>"] = { "<Tab>", "insert a tab character" },
  }
}

return M
