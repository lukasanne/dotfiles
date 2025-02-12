return {
  { "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 10000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
