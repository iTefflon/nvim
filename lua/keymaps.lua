-- Keymaps globales

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Gestión de archivos
keymap("n", "<leader>w", ":w<CR>", { desc = "Guardar archivo" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Cerrar ventana" })
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Explorador de archivos" })

-- Splits y ventanas
keymap("n", "<C-e>s", ":split<CR>", { desc = "Split horizontal" })
keymap("n", "<C-e>v", ":vsplit<CR>", { desc = "Split vertical" })
keymap("n", "<C-e>c", ":close<CR>", { desc = "Cerrar ventana actual" })
keymap("n", "<C-e>o", ":only<CR>", { desc = "Cerrar otras ventanas" })
keymap("n", "<C-e>=", "<C-w>=", { desc = "Balancear ventanas" })
keymap("n", "<C-e>+", "<C-w>+", { desc = "Aumentar altura" })
keymap("n", "<C-e>-", "<C-w>-", { desc = "Reducir altura" })
keymap("n", "<C-e>>", "<C-w>>", { desc = "Aumentar ancho" })
keymap("n", "<C-e><", "<C-w><", { desc = "Reducir ancho" })


-- Keymaps para LSP (IDE)

-- Refactor y navegación
keymap("n", "<leader>lr", vim.lsp.buf.rename, { desc = "LSP: Renombrar símbolo" })
keymap("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP: Acciones de código" })
keymap("n", "<leader>ld", vim.lsp.buf.definition, { desc = "LSP: Ir a definición" })
keymap("n", "<leader>lR", vim.lsp.buf.references, { desc = "LSP: Ver referencias" })

-- Documentación
keymap("n", "K", vim.lsp.buf.hover, { desc = "LSP: Documentación flotante" })

-- Diagnósticos
keymap("n", "<leader>le", vim.diagnostic.open_float, { desc = "LSP: Ver error" })
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "LSP: Error anterior" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "LSP: Error siguiente" })

-- Formateo
keymap("n", "<leader>lf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "LSP: Formatear documento" })

