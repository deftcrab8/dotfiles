return {
  {
    "savq/melange-nvim",
    priority = 1000, -- ensures it loads before other plugins
    config = function()
      vim.cmd([[colorscheme melange]])
    end,
  },
  
  {
    "vague2k/vague.nvim",
    priority = 1000, -- ensures it loads before other plugins
    config = function()
      vim.cmd([[colorscheme vague]])
    end,
  },
  
  {
    "bettervim/yugen.nvim",
    priority = 1000, -- ensures it loads before other plugins
    config = function()
      vim.cmd([[colorscheme yugen]])
    end,
  },
  
  {
    "daschw/leaf.nvim",
    priority = 1000, -- ensures it loads before other plugins
    config = function()
      vim.cmd([[colorscheme leaf]])
    end,
  },
  
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000 
  }
  
}

