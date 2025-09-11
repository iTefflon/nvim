
--   Telescope - Buscador avanzado


-- Atajos principales:
--   <leader>ff → Buscar archivos
--   <leader>fg → Buscar texto (live_grep)
--   <leader>fb → Buffers abiertos
--   <leader>fo → Archivos recientes
--   <leader>fh → Help tags
--   <leader>ld → Diagnósticos LSP
--   <leader>ls → Símbolos del documento/proyecto

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" }, -- dependencia obligatoria
    { "BurntSushi/ripgrep" },    -- búsqueda rápida en texto
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- mejor rendimiento
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        wrap_result = true, -- envolver resultados largos
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            width = 0.9,
            preview_cutoff = 10,
          },
        },
        mappings = {
          i = {
            ["<esc>"] = require("telescope.actions").close, -- salir rápido con Esc
            ["<C-Down>"] = require("telescope.actions").cycle_history_next,
            ["<C-Up>"] = require("telescope.actions").cycle_history_prev,
          },
        },
      },
      pickers = {
        buffers = { sort_mru = true, ignore_current_buffer = true },
        find_files = { wrap_results = true },
        live_grep = { wrap_results = true },
        diagnostics = { wrap_results = true },
        lsp_references = { wrap_results = true },
        lsp_definitions = { wrap_results = true },
      },
    })

    telescope.load_extension("fzf") -- cargar extensión fzf para mayor velocidad
  end,

  keys = {
    -- Archivos y texto
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Buscar archivos" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Buscar texto en proyecto" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Archivos recientes" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Buscar ayuda" },

    -- Buffers
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers abiertos" },

    -- Diagnósticos y símbolos (integración con LSP)
    { "<leader>ld", "<cmd>Telescope diagnostics<cr>", desc = "Ver diagnósticos LSP" },
    {
      "<leader>ls",
      function()
        local aerial_avail, _ = pcall(require, "aerial")
        if aerial_avail then
          require("telescope").extensions.aerial.aerial()
        else
          require("telescope.builtin").lsp_document_symbols()
        end
      end,
      desc = "Buscar símbolos en documento/proyecto",
    },

    -- Extras
    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Historial de comandos" },
    { "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Marcas" },
    { "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buscar en archivo actual" },
  },
}

