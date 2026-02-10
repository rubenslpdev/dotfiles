local opt = vim.opt

-- Clipboard (Integração com Sistema para CTRL+C / CTRL+V)
-- Nota: No Linux, você deve ter o 'xclip' ou 'wl-copy' instalado.
opt.clipboard = "unnamedplus"

-- Interface e Números
opt.number = true           -- Mostra o número da linha
opt.relativenumber = true   -- Números relativos (ótimo para pular linhas)
opt.cursorline = true       -- Destaca a linha atual
opt.termguicolors = true    -- Cores reais no terminal
opt.scrolloff = 10          -- Mantém 10 linhas visíveis ao dar scroll

-- Indentação e Espaços
opt.tabstop = 4             -- Tab vale 4 espaços
opt.shiftwidth = 4          -- Indentação de 4 espaços
opt.expandtab = true        -- Transforma Tabs em Espaços
opt.smartindent = true      -- Indentação inteligente

-- Busca
opt.ignorecase = true       -- Ignora maiúsculas na busca
opt.smartcase = true        -- Se usar maiúscula na busca, ele filtra
opt.hlsearch = false        -- Tira o destaque amarelo após a busca (opcional)

-- Performance e Backup
opt.swapfile = false
opt.updatetime = 50         -- Resposta mais rápida do editor
