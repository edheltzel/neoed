return {
  "mg979/vim-visual-multi",
  event = "VeryLazy",
  init = function()
    vim.g.VM_maps = {
      ["Select All"] = "<C-S-l>",
      ["Visual All"] = "<C-S-l>",
      ["Find Under"] = "<C-S-d>",
    }
  end,
}
