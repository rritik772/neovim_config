local M = {}

M.disabled = {
  n = {
    ["<leader>x"] = "",
    ["<leader>th"] = "",
    ["<leader>fb"] = ""
  }
}

M.buffers = {
  n = {
    ["<leader>bf"] = { "<cmd>Telescope buffers<cr>", "Search buffers" }
  }
}

M.easyalign = {
  n = {
    ["ga"] = { "<Plug>(EasyAlign)", "EasyAlign" },
  },
  x = {
    ["ga"] = { "<Plug>(EasyAlign)", "EasyAlign" },
  }
}

M.general = {
  i = {
  },
  n = {
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>" },
    ["<leader>c"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer"
    },
  }
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd>LazyGit<CR>", "open lazygit" },
    ["<leader>gc"] = { "<cmd>Telescope git_commits<CR>", "git commits" },
   }
}

M.lsp = {
  n = {
    ["<leader>lf"] = {
      function() vim.lsp.buf.format {async = true} end,
      "Format buffer"
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "Code action"
    },
    ["<leader>lR"] = {
      function () require("telescope.builtin").lsp_references() end,
      "Search Refernces"
    },
    ["<leader>lr"] = {
      function () require("nvchad_ui.renamer").open() end,
      "Rename variable"
    },
    ["<leader>lh"] = {
      function () vim.lsp.buf.signature_help() end,
      "Signature help"
    },
    ["<leader>lt"] = {
      function() vim.lsp.buf.type_definition() end,
      "Type definations"
    },
  }
}

M.toggleterm = {
  n = {
    ["<C-'>"] = { "<cmd>ToggleTerm<CR>", "ToggleTerm" },
  },
  t = {
    ["<C-'>"] = { "<cmd>ToggleTerm<CR>", "ToggleTerm" },
  }
}

return M
