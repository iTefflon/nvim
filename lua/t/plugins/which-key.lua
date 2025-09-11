--   Which-key - Menú de atajos

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")

    wk.register({
      ["<leader>"] = {
        -- Archivos
        f = {
          name = "file",
          f = { "<cmd>Telescope find_files<cr>", "Find File" },
          w = { "<cmd>Telescope live_grep<cr>", "Find Word" },
          o = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
          b = { "<cmd>Telescope buffers<cr>", "Buffers" },
        },

        -- Explorador
        e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },

        -- Servidores (Quarkus/Django)
        r = {
          name = "run",
          d = { "<cmd>!python manage.py runserver<cr>", "Run Django" },
          k = { "<cmd>!./mvnw quarkus:dev<cr>", "Run Quarkus" },
        },

        -- LSP
        l = {
          name = "lsp",
          d = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
          r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
          a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
          f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
        },

        -- Git
        g = {
          name = "git",
          s = { "<cmd>!git status<cr>", "Status" },
          a = { "<cmd>!git add .<cr>", "Add All" },
          c = { "<cmd>!git commit -m 'update'<cr>", "Commit" },
          p = { "<cmd>!git push<cr>", "Push" },
        },
      },
    })
  end,
}

