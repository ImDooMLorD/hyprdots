return {
  -- A fun game to improve Vim motions
  { 'ThePrimeagen/vim-be-good' },

  -- Seamless navigation between Vim and Tmux
  { 'christoomey/vim-tmux-navigator', lazy = false },

  -- smear-cursor.nvim for smooth caret animations with white color and no trailing effect
  {
    'sphamba/smear-cursor.nvim',
    lazy = false, -- load immediately
    opts = {
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = false,
      smear_insert_mode = true,
      cursor_color = '#ffffff', -- white caret

      -- Parameters set to animate the caret smoothly with no trailing effect:
      stiffness = 0.5, -- Responsive movement
      trailing_stiffness = 0.5, -- Tail immediately follows the caret
      distance_stop_animating = 0.4, -- No lingering animation
      trailing_exponent = 2, -- Linear decay (effectively no trail)
    },
  },
}
