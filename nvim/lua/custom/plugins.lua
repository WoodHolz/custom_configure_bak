local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin  
  -- 默认情况下，所有 NvChad 插件都是延迟加载的
  -- 要让一个插件被加载，你需要设置以下其中之一：ft、cmd、keys、event，或者将插件的 lazy 选项设置为 false。
  -- ft：代表 "filetype"，用于指定特定文件类型时加载插件。例如，你可以设置 "ft = "markdown"，这样当打开 Markdown 文件时，对应的插件会被加载。
  -- cmd：代表 "command"，用于设置一个命令，当使用这个命令时，对应的插件会被加载。
  -- keys：用于设置按键映射，当按下特定按键组合时，对应的插件会被加载。
  -- event：用于设置事件，当特定事件发生时，对应的插件会被加载。
  -- lazy = false：如果将插件的 lazy 选项设置为 false，那么这个插件会在 Neovim 启动时立即加载，而不是延迟加载。

  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  {
    -- if it's not working when `:MarkdownPreview`, use ":call mkdp#util#install() "
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
