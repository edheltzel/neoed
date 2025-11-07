-- all the git plugins
return {
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    opts = {
      current_line_blame = true,
      toggle_signs = true,
    },
  },
}
