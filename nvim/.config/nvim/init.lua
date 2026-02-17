-- Line Numbers (which we already discussed)
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Indentation (Standard 4-space indent)
-- vim.cmd("set expandtab")
-- vim.cmd("set tabstop=2")
-- vim.cmd("set softtabstop=2")
-- vim.cmd("set shiftwidth=2")
-- vim.cmd("set smartindent")
-- --
-- -- Search Behavior
-- vim.opt.ignorecase = true     -- Ignore case when searching...
-- vim.opt.smartcase = true      -- ...unless you use a capital letter
-- vim.opt.hlsearch = false      -- Don't keep previous search highlighted (personal preference)
--
-- -- Interface Improvements
-- vim.opt.termguicolors = true  -- Enable 24-bit RGB colors
-- vim.opt.scrolloff = 8         -- Keep 8 lines above/below cursor (stops it hitting the edge)
-- vim.opt.mouse = 'a'           -- Enable mouse support (clicking, scrolling)
-- vim.opt.cursorline = true     -- Highlight the line the cursor is on
-- vim.opt.wrap = false          -- Don't wrap long lines (better for code)
--
-- -- Utility
-- vim.opt.clipboard = "unnamedplus" -- Use system clipboard (copy/paste to other apps)
-- vim.opt.undofile = true           -- Save undo history to a file (stays after closing)
--
-- -- Disable the Neovim right-click popup menu
-- vim.cmd([[aunmenu PopUp]])
-- vim.opt.mousemodel = "extend"
--

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
local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}

require("lazy").setup(plugins, opts)

-- Catppuccin Setup
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
