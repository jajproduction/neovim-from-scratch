local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'thick',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#91B362',
      bg = '#0A0E14',
    },
    separator_selected = {
      fg = '#F9AF4F',
    },
    background = {
      fg = '#B3B1AD',
      bg = '#0A0E14'
    },
    buffer_selected = {
      fg = '#0A0E14',
      bg = '#B3B1AD',
      bold = true,
    },
    fill = {
      bg = '#0A0E14'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
