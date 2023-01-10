local registers = require("registers")

registers.setup({
  symbols = {
    -- Show a special character for line breaks
    newline = "⏎",
    -- Show space characters without changes
    space = " ",
    -- Show a special character for tabs
    tab = "·",
    -- The character to show when a register will be applied in a char-wise fashion
    register_type_charwise = "ᶜ",
    -- The character to show when a register will be applied in a line-wise fashion
    register_type_linewise = "ˡ",
    -- The character to show when a register will be applied in a block-wise fashion
    register_type_blockwise = "ᵇ",
  },
  -- Expose the :Registers user command
  register_user_command = true,
  -- Always transfer all selected registers to the system clipboard
  system_clipboard = true,
  -- Don't show whitespace at the begin and end of the register's content
  trim_whitespace = true,
  -- Don't show registers which are exclusively filled with whitespace
  hide_only_whitespace = true,
  -- Show a character next to the register name indicating how the register will be applied
  show_register_types = true,
  show_empty = false,
  window = {
    border = "single",
    min_height = 3,
    max_width = 100,
    highlight_cursorline = false,
  },
  bind_keys = {
    -- Show the window when pressing " in normal mode, applying the selected register as part of a motion, which is the default behavior of Neovim
    normal = registers.show_window({ mode = "motion", delay = 0.5 }),
    -- Show the window when pressing " in visual mode, applying the selected register as part of a motion, which is the default behavior of Neovim
    visual = registers.show_window({ mode = "motion", delay = 0.5 }),
    -- Show the window when pressing <C-R> in insert mode, inserting the selected register, which is the default behavior of Neovim
    insert = registers.show_window({ mode = "insert" }),

    -- When pressing the key of a register, apply it with a very small delay, which will also highlight the selected register
    registers = registers.apply_register({ delay = 0.1 }),
    -- Immediately apply the selected register line when pressing the return key
    return_key = registers.apply_register(),
    -- Close the registers window when pressing the Esc key
    escape = registers.close_window(),

    -- Move the cursor in the registers window down when pressing <C-N>
    ctrl_n = registers.move_cursor_down(),
    -- Move the cursor in the registers window up when pressing <C-P>
    ctrl_p = registers.move_cursor_up(),
    -- Move the cursor in the registers window down when pressing <C-J>
    ctrl_j = registers.move_cursor_down(),
    -- Move the cursor in the registers window up when pressing <C-K>
    ctrl_k = registers.move_cursor_up(),
    -- Clear the register of the highlighted line when pressing <DEL>
    delete = registers.clear_highlighted_register(),
    -- Clear the register of the highlighted line when pressing <BS>
    backspace = registers.clear_highlighted_register(),
  },
})
