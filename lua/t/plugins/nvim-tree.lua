-- ==========================
--   NvimTree - Explorador de archivos
-- ==========================
-- Reemplaza el netrw nativo por un árbol de directorios moderno.
-- Atajo: <leader>e para abrir/cerrar el explorador.

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- iconos bonitos
  },
  config = function()
    -- Desactivar netrw (explorador por defecto de Vim)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Habilitar colores 24-bit
    vim.opt.termguicolors = true

    -- Configuración principal
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30, -- ancho del panel
      },
      renderer = {
        group_empty = true, -- agrupar carpetas vacías
        icons = {
          show = {
            git = true,
            file = true,
            folder = true,
            folder_arrow = true,
          },
          glyphs = {
            folder = {
              arrow_closed = "⏵",
              arrow_open = "⏷",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "⌥",
              renamed = "➜",
              untracked = "★",
              deleted = "⊖",
              ignored = "◌",
            },
          },
        },
      },
      filters = {
        dotfiles = true, -- ocultar archivos ocultos
      },
    })
  end,
}

