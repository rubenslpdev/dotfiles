return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup({
      signs = {
        add          = { text = '┃' }, 
        change       = { text = '┃' }, 
        delete       = { text = '┃' },
        topdelete    = { text = '┃' },
        changedelete = { text = '┃' },
        untracked    = { text = '┆' },
      },
      signcolumn = true, 
      numhl      = false, -- Se quiser que o número da linha também mude de cor, mude para true
      linehl     = false, -- Se quiser que a linha inteira fique colorida (pode poluir o visual)
      
      -- Atalhos úteis
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local function map(mode, l, r, opts)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = opts })
        end

        -- Navegação e Preview
        map('n', ']c', function() gs.next_hunk() end, "Próxima alteração")
        map('n', '[c', function() gs.prev_hunk() end, "Alteração anterior")
        map('n', '<leader>hp', gs.preview_hunk, "Preview da alteração")
      end
    })
  end
}
