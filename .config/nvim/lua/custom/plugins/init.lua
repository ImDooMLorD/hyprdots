return {
  -- A fun game to improve Vim motions
  { 'ThePrimeagen/vim-be-good' },

  -- Seamless navigation between Vim and Tmux
  { 'christoomey/vim-tmux-navigator', lazy = false },

  -- smear-cursor.nvim configured according to LazyVim extras recommendations
  {
    'sphamba/smear-cursor.nvim',
    event = 'VeryLazy',
    cond = vim.g.neovide == nil,
    opts = {
      hide_target_hack = true,
      cursor_color = 'none', -- Let the smear match the underlying text color
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = false,
      smear_insert_mode = true,
    },
    specs = {
      -- Disable mini.animate's cursor to avoid conflicts
      {
        'echasnovski/mini.animate',
        optional = true,
        opts = {
          cursor = { enable = false },
        },
      },
    },
  },

  -- neoscroll.nvim for ultra-smooth scrolling
  {
    'karb94/neoscroll.nvim',
    lazy = false,
    config = function()
      require('neoscroll').setup {
        easing_function = 'cubic', -- Natural acceleration/deceleration
        hide_cursor = false, -- Keep cursor visible to prevent flickering
        cursor_scrolls_alone = true, -- Allow smooth cursor movement with scrolling
        performance_mode = false, -- Ensure seamless animations
      }
    end,
  },
}
