return { 
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.config")
    config.setup({
      ensure_installed = {
        "lua",
        "javscript",
        "powershell", 
        "bash", 
        "c", 
        "asm",
        "markdown",
        "markdown_inline",
        "dockerfile",
        "python"
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

