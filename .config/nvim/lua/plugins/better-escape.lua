return {
  "max397574/better-escape.nvim",
  config = function()
    require("better_escape").setup({
        -- No modo de inserção, essas teclas saem para o modo normal
        mappings = {
            i = {
                j = {
                    k = "<Esc>",
                    j = "<Esc>",
                },
            },
            -- Você também pode configurar para o modo visual ou terminal se quiser
            c = {
                j = {
                    k = "<Esc>",
                },
            },
            t = {
                j = {
                    k = "<C-\\><C-n>",
                },
            },
        },
        timeout = vim.o.timeoutlen, -- Usa o tempo padrão do Neovim (geralmente 1000ms ou 500ms)
        clear_empty_lines = false,  -- Limpa espaços em branco se você sair de uma linha vazia
        replace_keycodes = true,    -- Garante que as teclas sejam interpretadas corretamente
    })
  end,
}
