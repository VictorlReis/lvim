lvim.plugins = {
  { "windwp/nvim-ts-autotag" },
  {
    "jose-elias-alvarez/typescript.nvim",
    ft = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
    },
    lazy = true,
    config = function()
      require("user.typescript").config()
    end,
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
    end
  },
  {
    "declancm/cinnamon.nvim",
    config = function()
      require("cinnamon").setup {
        default_keymaps = true,
        default_delay = 4,
        extra_keymaps = true,
        extended_keymaps = false,
        centered = true,
        scroll_limit = 100,
      }
    end,
    event = "BufRead",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },
  { "tpope/vim-surround" },
  {
    "sindrets/diffview.nvim",
    lazy = true,
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    keys = { "<leader>gd", "<leader>gh" },
    config = function()
      require("user.diffview").config()
    end,
    enabled = lvim.builtin.fancy_diff.active,
  },
  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },
  {
    "ThePrimeagen/refactoring.nvim",
    lazy = true,
    ft = { "typescript", "javascript", "lua", "c", "cpp", "go", "python", "java", "php" },
    event = "BufReadPost",
    config = function()
      require("refactoring").setup {}
    end,
    enabled = lvim.builtin.refactoring.active,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("user.colorizer").config()
    end,
    event = "BufReadPre",
  },
}
