-- Line Numbers (which we already discussed)
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Indentation (Standard 4-space indent)
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")

-- Search Behavior
vim.opt.ignorecase = true     -- Ignore case when searching...
vim.opt.smartcase = true      -- ...unless you use a capital letter
vim.opt.hlsearch = false      -- Don't keep previous search highlighted (personal preference)

-- Interface Improvements
vim.opt.scrolloff = 8         -- Keep 8 lines above/below cursor (stops it hitting the edge)
vim.opt.mouse = 'a'           -- Enable mouse support (clicking, scrolling)
vim.opt.cursorline = true     -- Highlight the line the cursor is on
vim.opt.wrap = false          -- Don't wrap long lines (better for code)

-- Utility
vim.cmd("set undofile")

-- Set the Leader
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {}

require("lazy").setup("plugins")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left" )


local config = require("nvim-treesitter.config")
config.setup({
  ensure_installed = {
    "lua",
    "javscript",
    "powershell", 
    "bash", 
    "c", 
    "asm",
  },
  highlight = { enable = true },
  indent = { enable = true },
})


-- Catppuccin Setup
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
