local M = {}
local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  on_config_done = nil,
  options = {
    active = true,
    mode = "buffers",
    numbers = "none",
    close_command = function(bufnr) -- can be a string | function, see "Mouse actions"
      M.buf_kill("bd", bufnr, false)
    end,
    separator_style = 'thin',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    persist_buffer_sort = true,
    enforce_regular_tabs = false,
    offsets = {
      {
        filetype = "undotree",
        text = "Undotree",
        highlight = "PanelHeading",
        padding = 1,
      },
      {
        filetype = "NvimTree",
        text = "Explorer",
        highlight = "PanelHeading",
        padding = 1,
      },
      {
        filetype = "DiffviewFiles",
        text = "Diff View",
        highlight = "PanelHeading",
        padding = 1,
      },
      {
        filetype = "flutterToolsOutline",
        text = "Flutter Outline",
        highlight = "PanelHeading",
      },
      {
        filetype = "packer",
        text = "Packer",
        highlight = "PanelHeading",
        padding = 1,
      },
    },
  },
  highlights = {
    separator = {
      fg = '#98971a',
      bg = '#282828',
    },
    separator_selected = {
      fg = '#d79921',
    },
    background = {
      fg = '#ebdbb2',
      bg = '#282828'
    },
    buffer_selected = {
      fg = '#282828',
      bg = '#ebdbb2',
      bold = true,
    },
    fill = {
      bg = '#282828'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
