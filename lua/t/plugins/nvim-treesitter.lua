
--   Treesitter - Mejor sintaxis e indentación


return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- asegura que los parsers se actualicen
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "lua",
        "java",
        "python",
        "javascript",
        "html",
        "css",
        "json",
        "yaml",
      },
      sync_install = false, -- instala parsers de manera asíncrona
      highlight = { enable = true }, -- resaltado de sintaxis
      indent = { enable = true },    -- indentación inteligente
    })
  end,
}

