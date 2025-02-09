


-- return {
--   { -- Add indentation guides even on blank lines
--     'lukas-reineke/indent-blankline.nvim',
--     -- Enable `lukas-reineke/indent-blankline.nvim`
--     -- See `:help ibl`
--     main = 'ibl',
--     opts = {},
--   },
-- }
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "│", -- Thin vertical line
        highlight = { "IndentBlanklineDefault" }, -- Default gray for outer blocks
      },
      scope = {
        show_start = true, -- Show start of block
        show_end = false, -- Hide end marker
        highlight = {
          "RainbowRed",
          "RainbowYellow",
          "RainbowBlue",
          "RainbowOrange",
          "RainbowGreen",
          "RainbowViolet",
          "RainbowCyan",
        }, -- Apply colors ONLY to inside blocks
      },
    },

    config = function()
      local hooks = require("ibl.hooks")

      -- Ensure highlight groups are reset when colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        -- Default gray for outer lines
        vim.api.nvim_set_hl(0, "IndentBlanklineDefault", { fg = "#5c6370" })

        -- Colors for inside blocks
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
      end)

      -- Apply indent-blankline settings
      require("ibl").setup({
        indent = {
          char = "│", -- Use a thin line
          highlight = { "IndentBlanklineDefault" }, -- Outer blocks default to gray
        },
        scope = {
          show_start = true,
          show_end = false,
          highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
          }, -- Inside blocks are colored
        },
      })
    end,
  },
}
