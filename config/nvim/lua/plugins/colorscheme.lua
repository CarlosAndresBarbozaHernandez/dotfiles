-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  ---------------------------------------------------------------------------
  -- Catppuccin (sin transparencia)
  ---------------------------------------------------------------------------
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  ---------------------------------------------------------------------------
  -- Monokai Pro (precargado, sin transparencia)
  ---------------------------------------------------------------------------
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 900,
    opts = {
      filter = "classic",
      devicons = true,
    },
  },

  ---------------------------------------------------------------------------
  -- Dracula (precargado, sin transparencia)
  ---------------------------------------------------------------------------
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 900,
    opts = {
      show_end_of_buffer = true,
      italic_comment = true,
    },
  },

  ---------------------------------------------------------------------------
  -- Gruvbox (tema por defecto)
  ---------------------------------------------------------------------------
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1100,
    opts = {
      contrast = "hard", -- soft, medium, hard
      italic = {
        strings = false,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
    },
  },

  ---------------------------------------------------------------------------
  -- LazyVim: Selección del tema por defecto
  ---------------------------------------------------------------------------
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
