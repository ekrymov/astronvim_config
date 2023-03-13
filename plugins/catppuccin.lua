return {
  "catppuccin/nvim",
  priority = 1000,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup {
      flavour = "mocha",  -- latte, frappe, macchiato, mocha
      integrations = {
        notify = true,
        neotree = true,
        which_key = true,
      },
    }
  end,
}
