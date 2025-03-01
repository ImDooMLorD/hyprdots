return {
  -- A fun game to improve Vim motions
  { 'ThePrimeagen/vim-be-good' },

  -- Seamless navigation between Vim and Tmux
  { 'christoomey/vim-tmux-navigator', lazy = false },

  -- Smear-cursor.nvim for smooth caret animations with a white trail
  {
    'sphamba/smear-cursor.nvim',
    lazy = false, -- load immediately
    opts = {
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = false,
      smear_insert_mode = true,
      -- Set the cursor (and its smear) color to white
      cursor_color = '#ffffff',

      -- Parameters tuned for a smoother effect:
      stiffness = 0.5, -- Lower stiffness for gradual movement
      trailing_stiffness = 0.4, -- Softer trailing effect
      distance_stop_animating = 0.5, -- Keeps the animation active longer over short distances
      trailing_exponent = 2, -- Moderate decay for the trail
    },
  },

  -- neoscroll.nvim for smooth scrolling
  {
    'karb94/neoscroll.nvim',
    lazy = false, -- load immediately
    config = function()
      require('neoscroll').setup {
        easing_function = 'quadratic', -- Controls the acceleration curve
        hide_cursor = true, -- Hide the cursor during scrolling
        stop_eof = true, -- Stop scrolling at the end of file
        cursor_scrolls_alone = true, -- Scroll the cursor line even if the cursor is off-screen
      }

      -- Custom key mappings using vim.keymap.set (replacing the deprecated set_mappings())
      vim.keymap.set('n', '<C-u>', function()
        require('neoscroll').scroll(-vim.wo.scroll, true, 100)
      end, { noremap = true, silent = true })

      vim.keymap.set('n', '<C-d>', function()
        require('neoscroll').scroll(vim.wo.scroll, true, 100)
      end, { noremap = true, silent = true })

      vim.keymap.set('n', '<C-b>', function()
        require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 150)
      end, { noremap = true, silent = true })

      vim.keymap.set('n', '<C-f>', function()
        require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 150)
      end, { noremap = true, silent = true })
    end,
  },
}
