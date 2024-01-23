local indent_char = "│"
-- local indent_char = "▏"
local exclude_filetypes = {
  "help",
  "startify",
  "aerial",
  "alpha",
  "dashboard",
  "lazy",
  "neogitstatus",
  "NvimTree",
  "neo-tree",
  "Trouble",
}
local exclude_buftypes = {
  "nofile",
  "terminal",
}

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User AstroFile",
    main = "ibl",
    opts = {
      indent = { char = indent_char, tab_char = indent_char },
      scope = { show_start = false, show_end = false, enabled = false },
      exclude = {
        buftypes = exclude_buftypes,
        filetypes = exclude_filetypes,
      },
    },
  },
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = "User AstroFile",
    opts = {
      symbol = indent_char,
      options = { border = "top", try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = exclude_filetypes,
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
}
