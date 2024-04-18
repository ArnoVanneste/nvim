return {
  "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
  lazy = false,
  config = function()
    require("toggle_lsp_diagnostics").init({ start_on = false })

    -- Keybindings -- 
    vim.keymap.set("n", "<leader>td", "<cmd>:ToggleDiag<cr>", { desc = "[T]oggle [D]iagnostics" })
  end,
}
