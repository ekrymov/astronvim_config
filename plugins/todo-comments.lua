-- Highlight TODO, FIX, BUG etc.
return {
  "folke/todo-comments.nvim",
  event = "BufRead",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "]c",
      function()
        require("todo-comments").jump_next()
      end,
      desc = "Next todo comment",
    },
    {
      "[c",
      function()
        require("todo-comments").jump_prev()
      end,
      desc = "Previous todo comment",
    },
  },
  opts = {
    highlight = {
      multiline = false,
    },
  },
}
