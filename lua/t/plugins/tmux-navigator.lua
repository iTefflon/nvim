
--   Tmux Navigator - Navegación entre splits

--   Ctrl-h / Ctrl-j / Ctrl-k / Ctrl-l → mover entre ventanas/paneles
--   Ctrl-\ → volver a la ventana anterior

return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
    { "<C-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
    { "<C-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
    { "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
    { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
  },
}

