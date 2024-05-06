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


M.crates = {
    n = {
        ["<leader>rcu"] = {
            function ()
                require('crates').upgrade_all_crates()
            end,
            "Update all Crates",
        }
    }
}

M.dap_python = {
    plugin = true,
    n = {
        ["<leader>dpr"] = {
            function ()
                require('dap-python').test_method()
            end,
            "Debug Python Run",
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
        ["<C-a>"] = {
            function ()
                require('harpoon.mark').add_file()
            end,
            "Harpoon Mark file",
        },
        ["<C-e>"] = {
            function ()
                require('harpoon.ui').toggle_quick_menu()
            end,
            "Harpoon Toggle Quick Menu",
        },
        ["<C-h>"] = {
            function ()
                require('harpoon.ui').nav_file(1)
            end,
            "Navigate Harpoon file 1",
        },
        ["<C-j>"] = {
            function ()
                require('harpoon.ui').nav_file(2)
            end,
            "Navigate Harpoon file 2",
        },
        ["<C-k>"] = {
            function ()
                require('harpoon.ui').nav_file(3)
            end,
            "Navigate Harpoon file 3",
        },
        ["<C-l>"] = {
            function ()
                require('harpoon.ui').nav_file(4)
            end,
            "Navigate Harpoon file 4",
        },
        ["<leader>e"] = {
            "<cmd>NvimTreeFocus<CR>",
            "Open NvimTree",
        },
        ["<leader>co"] = {
            "<cmd>copen<CR>",
            "Open QuickFix list",
        },
        ["<leader>cn"] = {
            "<cmd>cnext<CR>",
            "Next QuickFix",
        },
        ["<leader>cp"] = {
            "<cmd>cprev<CR>",
            "Previous QuickFix",
        },
        ["<leader>cq"] = {
            "<cmd>cclose<CR>",
            "Close QuickFix list",
        },
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
            "'d' key without deleting into paste register"
        },
        ["<C-p>"] = {
            "<cmd>cnext<CR>zz",
            "Select next option in hint dropdown",
        },
        ["<C-n>"] = {
            "<cmd>cprev<CR>zz",
            "Select previous option in hint dropdown",
        },
        ['<C-y>'] = {
            function ()
                require('cmp').mapping.confirm({ select = true })
            end,
            "Accept LSP Suggestion",
        },
        ["<leader>ss"] = {
            [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
            "Open regex to replace current word",
        },
        ["<C-c>"] = {
            "<Esc>",
            "Ctrl-c to Escape",
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
    },
    x = {
        ["<leader>p"] = {
            "[[\"_dP]]",
            "delete selection into void buffer then paste",
        }
    }
}


return M
