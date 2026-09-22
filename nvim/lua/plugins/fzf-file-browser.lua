-- Needed to do brew install fzf
return {
  {
    "SoryEscobar/file-browser-fzf.nvim", -- Or local path
    dependencies = { "ibhagwan/fzf-lua" },
    opts = {
      hijack_netrw = true,
      hidden = true,
      display_stat = true,
    },
    keys = {
      {
        "<leader>fb",
        function()
          require("fzf-lua-file-browser").browse({ cwd = vim.fn.getcwd() })
        end,
        desc = "File Browser (Root Dir)",
      },
      -- {
      --   "<leader>fB",
      --   function()
      --     require("fzf-lua-file-browser").browse({ cwd = vim.fn.expand("%:p:h") })
      --   end,
      --   desc = "File Browser (Buffer Dir)",
      -- },
      -- {
      --   "<space>fb",
      --   function()
      --     require("fzf-lua-file-browser").browse()
      --   end,
      --   desc = "FzfLua File Browser",
      -- },
    },
  },
}