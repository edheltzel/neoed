-- Custom filetype associations
vim.filetype.add({
  extension = {
    njk = "htmldjango",
    config = "sh",
  },
  filename = {
    [".*%.env%.*%"] = "sh",
  },
  pattern = {
    -- Example: [".*%.blade%.php"] = "blade",
  },
})
