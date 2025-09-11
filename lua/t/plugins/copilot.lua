
--   GitHub Copilot - IA en Neovim


return {
  "github/copilot.vim",
  config = function()
    -- Desactivar el Tab por defecto de Copilot
    vim.g.copilot_no_tab_map = true

    -- Usar <C-l> para aceptar sugerencias
    vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

    -- Filetypes donde Copilot está (des)habilitado
    vim.g.copilot_filetypes = {
      ["*"] = true,     
      ["markdown"] = false, 
      ["text"] = false,    
    }
  end,
}

