return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'jvgrootveld/telescope-zoxide', -- Adicionando a dependência do Zoxide aqui
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          path_display = { "truncate" },
        },
        extensions = {
          zoxide = {
            -- Aqui você pode customizar o zoxide se quiser, ou deixar vazio
          }
        }
      })

      -- Carrega a extensão
      telescope.load_extension('zoxide')

      -- Atalhos
      local keymap = vim.keymap.set
      keymap('n', '<leader>ff', builtin.find_files, { desc = "Buscar Arquivos" })
      keymap('n', '<leader>fg', builtin.live_grep, { desc = "Buscar Texto" })
      keymap('n', '<leader>fb', builtin.buffers, { desc = 'Listar Buffers Abertos' })
      keymap('n', '<leader>fo', builtin.oldfiles, { desc = "Buscar ultimos arquivos abertos" })      
      -- Atalho para o Zoxide (cd rápido entre projetos)
      keymap('n', '<leader>cd', telescope.extensions.zoxide.list, { desc = "Zoxide (Jump to folder)" })
    end,
  },
}
