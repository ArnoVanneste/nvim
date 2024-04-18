return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    -- document existing key chains --
    local wk = require("which-key")
    wk.register({
      ["<leader>w"] = { name = "[W]indow", _ = "which_key_ignore" },
      ["<leader>b"] = { name = "[B]uffer", _ = "which_key_ignore" },
      ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
      ["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
      ["<leader>r"] = { name = "[R]e-name/start", _ = "which_key_ignore" },
      ["<leader>t"] = { name = "[T]oggle", _ = "which_key_ignore" },
      ["<leader>q"] = { name = "[Q]uit", _ = "which_key_ignore" },
    })
  end,
  opts = {}
}
