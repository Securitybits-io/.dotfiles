return {
  "christoomey/vim-tmux-navigator",
   vim.keymap.set('n','A-Left', ':TmuxNavigateLeft<CR>'),
   vim.keymap.set('n','A-Down', ':TmuxNavigateDown<CR>'),
   vim.keymap.set('n','A-Up',   ':TmuxNavigateUp<CR>'),
   vim.keymap.set('n','A-Right',':TmuxNavigateRight<CR>'),
} 
