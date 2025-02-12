return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Load the theme at startup
    config = function()
      -- List of integrations supported by Catppuccin
      local supported_integrations = {
        "cmp", -- nvim-cmp
        "gitsigns", -- gitsigns.nvim
        "nvimtree", -- nvim-tree.lua
        "telescope", -- telescope.nvim
        "treesitter", -- nvim-treesitter
        "lsp_trouble", -- trouble.nvim
        "which_key", -- which-key.nvim
        "dashboard", -- alpha-nvim (dashboard)
        "neotree", -- neo-tree.nvim
        "bufferline", -- bufferline.nvim
        "indent_blankline", -- indent-blankline.nvim
        "native_lsp", -- built-in LSP
        "navic", -- nvim-navic
        "fidget", -- fidget.nvim
        "noice", -- noice.nvim
        "notify", -- nvim-notify
        "symbols_outline", -- symbols-outline.nvim
        "dap", -- nvim-dap
        "dap_ui", -- nvim-dap-ui
        "illuminate", -- nvim-illuminate
        "mini", -- mini.nvim
        "neogit", -- neogit
        "harpoon", -- harpoon
        "mason", -- mason.nvim
        "flash", -- flash.nvim
        "overseer", -- overseer.nvim
        "ts_rainbow", -- ts-rainbow (via nvim-treesitter)
        "ts_rainbow2", -- ts-rainbow2 (via nvim-treesitter)
        -- Add other supported integrations here
      }

      -- Activate only integrations for loaded plugins
      local integrations = {}
      for _, integration in ipairs(supported_integrations) do
        -- Check if the corresponding plugin is loaded
        local plugin_loaded = pcall(require, integration)
        if plugin_loaded then
          integrations[integration] = true
        end
      end

      -- Configure Catppuccin
      require("catppuccin").setup({
        flavour = "mocha", -- Other options: "latte", "frappe", "macchiato"
        transparent_background = true,
        integrations = integrations,
      })

      -- Apply the theme
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
