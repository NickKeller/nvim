local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    },
        ["<leader>gie"] = {
            "<cmd>GoIfErr<CR>",
            "Generate Go \"if err\" block",
        }
  }
}

M.abc = {
    n = {
        ["Q"] = {
            "<nop>",
            "Q is nop",
        },
        ["J"] = {
            "mzJ`z",
            "Move line below to current line, keep cursor where it is",
        },
        ["n"] = {
            "nzzzv",
            "Page down, keep cursor in center",
        },
        ["N"] = {
            "Nzzzv",
            "Page up, keep cursor in center"
        },
        ["<C-d>"] = {
            "<C-d>zz",
        },
        ["<C-u>"] = {
            "<C-u>zz",
        },
        ["<leader>y"] = {
            '"+y',
            "Yank into system clipboard, not vims"
        },
        ["<leader>Y"] = {
            '"+Y',
        },
        ["<leader>d"] = {
            [["_d]],
        },
        ["<C-k>"] = {
            "<cmd>cnext<CR>zz",
            "Select next option in hint dropdown",
        },
        ["<C-j"] = {
            "<cmd>cprev<CR>zz",
        },
        ["<leader>s"] = {
            [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
            "Open regex to replace current word",
        },
        ["<leader>tx"] = {
            "<cmd>tabclose<CR>",
            "Close current tab",
        },
        ["<leader>tf"] = {
            "<cmd>tabnew %<CR>",
            "Open new tab with current buffer",
        },
        ["<leader>sv"] = {
            "<C-w>v",
            "Split vertically",
        },
        ["<leader>sh"] = {
            "<C-w>s",
            "Split horizontally",
        },
        ["<leader>se"] = {
            "<C-w>=",
            "Set splits to be equal width",
        },
        ["<leader>sx"] = {
            "<cmd>close<CR>",
            "Close split"
        }
    },
    v = {
        ["J"] = {
            ":m '>+1<CR>gv=gv",
            "Move selected lines down",
        },
        ["K"] = {
            ":m '<-2<CR>gv=gv",
            "Move selected lines up",
        },
        ["<leader>y"] = {
            '"+y',
            "Yank into system clipboard",
        }
    }
}


return M
