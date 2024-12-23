if true then return {

  "Mofiqul/vscode.nvim",
  "lunarvim/darkplus.nvim",
  "terrortylor/nvim-comment",
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
      },
    },
  },


  {
    "easymotion/vim-easymotion",
    event = "BufReadPost", -- Lazy load when a file is opened
    config = function()
      -- Optional: Add your custom configuration here
      vim.g.EasyMotion_smartcase = 1
    end,
  },
  'mg979/vim-visual-multi',
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
  'jose-elias-alvarez/null-ls.nvim',  -- Linter and formatter integration
    config = function()
      local null_ls = require("null-ls")
      
      null_ls.setup({
        sources = {
          -- Add your linter here, for example clang-tidy for C/C++
          null_ls.builtins.formatting.clang_format,
        },
      })
    end,
  
  requires = {
    'nvim-lua/plenary.nvim',  -- Dependency for null-ls
  },},

  -- { 
  --   "github/copilot-chat.nvim",
  --   event = "InsertEnter",  -- Lazy load when entering insert mode
  --   config = function()
  --     -- Optional: Customize Copilot Chat settings
  --     vim.g.copilot_chat_enabled = true
  --   end,
  -- },
  -- {
  --   "github/copilot.vim",
  --   cmd = "Copilot", -- Lazy load when entering insert mode
  --   config = function()
  --     -- Optional: Customize Copilot behavior
  --     vim.g.copilot_no_tab_map = true  -- Disable default Tab mapping
  --   end,
  -- },
} end

