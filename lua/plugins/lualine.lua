return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    local harpoon = require("harpoon.mark")
    local function harpoon_component()
      local total_marks = harpoon.get_length()
      if total_marks == 0 then
        return ""
      end
      local current_mark = "—"
      local mark_idx = harpoon.get_current_index()
      if mark_idx ~= nil then
        current_mark = tostring(mark_idx)
      end
      return string.format("󱡅 %s/%d", current_mark, total_marks)
    end
    local function lspinfo()
      if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_active_clients()) do
          if client.name ~= "null-ls" then
            return "   LSP ~ " .. client.name
          end
        end
      end
      return "No LSP found"
    end
    require("lualine").setup({
      options = {
        theme = "catppuccin",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = " ", right = " " },
      },
      sections = {
        lualine_b = {
          { "branch", icon = "", },
          harpoon_component,
          "diff",
          "diagnostics",
        },
        lualine_c = {
          { "filename", path = 1 },
        },
        lualine_x = {
          { lspinfo, color = { fg = "#8aadf4" } },
          "filetype",
        },
      },
    })
  end,
}
