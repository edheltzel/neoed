return {
  -- Opencode
  {
    "NickvanDyke/opencode.nvim",
    -- -1
    dependencies = {
      {
        "folke/snacks.nvim",
        opts = {
          input = {},
          picker = {},
          terminal = {},
        },
      },
    },
    config = function()
      --- @type opencode.Opts
      vim.g.opencode_opts = {
        -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition".
      }

      -- Required for `opts.auto_reload`.
      vim.o.autoread = true

      vim.keymap.set({ "n", "x" }, "<leader>aoa", function()
        require("opencode").ask("@this: ", { submit = true })
      end, { desc = "Ask OpenCode" })

      vim.keymap.set({ "n", "x" }, "<leader>aox", function()
        require("opencode").select()
      end, { desc = "Execute OpenCode action…" })

      vim.keymap.set({ "n", "x" }, "<leader>aod", function()
        require("opencode").prompt("@this")
      end, { desc = "Add to OpenCode" })

      vim.keymap.set("n", "<leader>aoc", function()
        require("opencode").toggle()
      end, { desc = "Launch OpenCode" })
    end,
  },
}
