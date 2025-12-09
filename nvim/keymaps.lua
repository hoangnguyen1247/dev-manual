local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>f", ":Telescope find_files<CR>")
map("n", "<leader>g", ":Telescope live_grep<CR>")

map("n", "gd", "<Plug>(coc-definition)", {})
map("n", "gy", "<Plug>(coc-type-definition)", {})
map("n", "gi", "<Plug>(coc-implementation)", {})
map("n", "gr", "<Plug>(coc-references)", {})
map("n", "<leader>rn", "<Plug>(coc-rename)", {})
