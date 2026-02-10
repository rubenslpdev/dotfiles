local keymap = vim.keymap.set

-- Define a tecla Leader como Espaço
vim.g.mapleader = " "

-- Salvar e Sair rápido (Space + w ou Space + q)
keymap("n", "<leader>w", ":w<CR>", { desc = "Salvar arquivo" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Sair do Neovim" })

-- Atalhos extras para Clipboard (Garante o CTRL+C/V em todos os modos)
keymap("v", "<C-c>", '"+y', { desc = "Copiar" })
keymap("n", "<C-v>", '"+p', { desc = "Colar" })
keymap("i", "<C-v>", "<C-r>+", { desc = "Colar no modo inserção" })

-- Navegação entre janelas (CTRL + h/j/k/l)
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Manter o cursor centralizado ao mover páginas (muito confortável)
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Mover linhas selecionadas para cima/baixo (Alt + j/k)
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

