local M = require("which-key")

M.register({
  ["<leader>f"] = {
    name = "file"
  },

  ["<leader>g"] = {
    name = "GitHub"
  },

  ["<leader>l"] = {
    name = "LSP",
  },

  ["<leader>o"] = { "<cmd>NvimTreeFocus<cr>", "Focus NvimTree" },

  ["<leader>t"] = {
    name = "Toggles",
    t = { "<cmd> Telescope themes <CR>", "Change Theme" }
  }

})

return M
