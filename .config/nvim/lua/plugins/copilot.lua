return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },                                    -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim",                  branch = "master" }, -- for curl, log and async functions
      { "nvim-telescope/telescope.nvim" },
      { "nvim-telescope/telescope-ui-select.nvim" },
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    vim.keymap.set('n', '<leader>co', ':CopilotChat<CR>', { desc = 'Open Copilot Chat' })
    -- See Commands section for default commands if you want to lazy load on them
  },
}
