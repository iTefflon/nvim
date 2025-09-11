--   Alpha - Pantalla de inicio

return {
  "goolord/alpha-nvim",
  config = function()
    require("alpha").setup(require("alpha.themes.dashboard").config)
  end,
}

