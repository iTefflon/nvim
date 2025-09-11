--   Conform - Formateo automático


return {
  "stevearc/conform.nvim",
  opts = {
    -- Qué formateadores usar por lenguaje
    formatters_by_ft = {
      python = { "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      java = { "google-java-format" },
    },

    -- Formateo automático al guardar
    format_on_save = {
      timeout_ms = 500,   
      lsp_fallback = true, 
    },
  },

  config = function(_, opts)
    require("conform").setup(opts)

    -- Atajo manual: <leader>fm para forzar formateo
    vim.keymap.set("n", "<leader>fm", function()
      require("conform").format({ async = true })
    end, { desc = "Formatear con conform.nvim" })
  end,
}

