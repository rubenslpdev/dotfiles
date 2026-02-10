-- 1. Carrega as opções básicas (indentação, clipboard, números de linha)
-- Localizado em: lua/config/options.lua
require("config.options")

-- 2. Carrega os atalhos de teclado (Keymaps e a tecla Leader)
-- Localizado em: lua/config/keymaps.lua
require("config.keymaps")

-- 3. Bootstrap do Lazy.nvim (Instala o gerenciador caso não esteja instalado)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Instalando o lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 4. Configuração do Lazy para carregar os plugins
-- O parâmetro "plugins" diz ao Lazy para procurar arquivos dentro de lua/plugins/
require("lazy").setup("plugins", {
  change_detection = {
    notify = false, -- Desativa a notificação chata toda vez que você salvar a config
  },
  ui = {
    border = "rounded", -- Deixa a interface do :Lazy mais bonita
  },
})
