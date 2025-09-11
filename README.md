███████╗████████╗███████╗███████╗███████╗
╚══███╔╝╚══██╔══╝██╔════╝██╔════╝██╔════╝
  ███╔╝    ██║   █████╗  █████╗  █████╗ 
 ███╔╝     ██║   ██╔══╝  ██╔══╝  ██╔══╝ 
███████╗   ██║   ███████╗██║     ██║ 
╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝ 


##Mi configuración de Neovim

Configuración personalizada de **Neovim** pensada para desarrollo en:

- **Java (Quarkus)**
- **Python (Django)**
- **Web** → HTML, CSS, JavaScript
- Archivos de configuración → JSON, YAML
- Configuración de Neovim en **Lua**

---

## Características

- **Gestor de plugins**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **LSP + Autocompletado**: [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) + [mason.nvim](https://github.com/williamboman/mason.nvim)
- **Formateo automático**: [conform.nvim](https://github.com/stevearc/conform.nvim) con Black, Prettier y google-java-format
- **IA para código**: [copilot.vim](https://github.com/github/copilot.vim)
- **Explorador de archivos**: [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- **Búsqueda avanzada**: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **Coloreado avanzado**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Barra de estado**: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- **Pantalla de inicio**: [alpha-nvim](https://github.com/goolord/alpha-nvim)
- **Calidad de vida**: autopairs, comment.nvim, which-key, tmux-navigator

---

##Requisitos

Debes instalar estas dependencias externas para que todo funcione:

## Python
```bash
pip install black ruff
```

## Javascript Web
```bash
npm install -g prettier
```

## Java
```bash
wget https://github.com/google/google-java-format/releases/download/v1.22.0/google-java-format-1.22.0-all-deps.jar -O ~/.local/bin/google-java-format.jar
echo '#!/bin/bash
java -jar ~/.local/bin/google-java-format.jar "$@"' > ~/.local/bin/google-java-format
chmod +x ~/.local/bin/google-java-format
```

## Extra
```bash
sudo dnf install ripgrep tmux
```







