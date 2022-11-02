local nnoremap = require("user.keymap").nnoremap

-- File Exploration
nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>b", "<cmd>bn<CR>")
nnoremap("<leader>B", "<cmd>bp<CR>")

-- Enable/Disable search hightlight
nnoremap("<leader>h", "<cmd>set invhls<CR>")

-- Copy/Paste
nnoremap("<leader>y", "<Esc>\"+y")
nnoremap("<leader>Y", "<Esc>\"+Y")
nnoremap("<leader>p", "<Esc>\"+p")
nnoremap("<leader>P", "<Esc>\"+P")
