return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    -- document existing key chains --
    local wk = require("which-key")
    wk.add({
      { "<leader>w" , group = "[W]indow" },
      { "<leader>b" , group = "[B]uffer" },
      { "<leader>c" , group = "[C]ode" },
      { "<leader>f" , group = "[F]ind" },
      { "<leader>r" , group = "[R]e-name/start" },
      { "<leader>t" , group = "[T]oggle" },
      { "<leader>q" , group = "[Q]uit" },
      { "<leader>g" , group = "[G]oto" }
    })
  end,
  opts = {}
}
