return {
  "nvim-treesitter/nvim-treesitter",
  -- auto_install = true,

  highlight = {
    enable = false,
    disable = { "blade.php" },
  },
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "php",
    })
  end,
}
