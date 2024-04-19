return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin --
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter --
    treesitter.setup({
      -- auto installs new languages --
      auto_install = true,
      -- enable syntax highlighting --
      highlight = { enable = true, },
      -- enable autotagging (w/ nvim-ts-autotag plugin) --
      autotag = { enable = true, },
    })
  end,
}
