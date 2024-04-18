return {
  "echasnovski/mini.nvim",
  config = function()
    -- surround --
    require("mini.surround").setup()

    -- remove buffers --
    local bufremove = require("mini.bufremove")

    bufremove.setup()
    -- delete buffer --
    vim.keymap.set("n", "<leader>bd", function()
      local bd = bufremove.delete
      if vim.bo.modified then
        local choice =
        vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
        if choice == 1 then -- Yes
          vim.cmd.write()
          bd(0)
        elseif choice == 2 then -- No
          bd(0, true)
        end
      else
        bd(0)
      end
    end, { desc = "[B]uffer [D]elete" })   
    -- delete buffer without saving -- 
    vim.keymap.set("n", "<leader>bD", function()
      require("mini.bufremove").delete(0, true)
    end, { desc = "[B]uffer [D]elete (Force)" })
  end,
}
