return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- Laravel
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-dotenv",
    },
    cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
    keys = {
      { "<leader>La", ":Laravel artisan<cr>" },
      { "<leader>Lr", ":Laravel routes<cr>" },
      {
        "<leader>Lt",
        function() require("laravel.tinker").send_to_tinker() end,
        mode = "v",
        desc = "Laravel Application Routes",
      },
    },
    event = { "VeryLazy" },
    config = function()
      require("laravel").setup()
      require("telescope").load_extension "laravel"
    end,
  },
}
