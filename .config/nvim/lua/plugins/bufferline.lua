return {
  "akinsho/bufferline.nvim",
  opts = function (_, opts)
    opts.options = {
      diagnostics = false,
      groups = {
          items = {
              require('bufferline.groups').builtin.pinned:with({ icon = "" })
          }
      },
      themable = true,
      mode = 'buffers',
      show_buffer_icons = false,
      separator_style = 'thin',
    }
    opts.options.offsets = {}
  end
}
