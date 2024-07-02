return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- set header --
    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }

    -- set menu --
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("<C-n>", "  > Toggle file explorer", "<cmd>Neotree filesystem reveal left toggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fg", "  > Find by Grep", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
      dashboard.button("st", "󰊄 > Speed Typer", "<cmd>Speedtyper<CR>"),
    }

    -- send config to alpha --
    alpha.setup(dashboard.opts)

    -- disable folding on alpha buffer --
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
