return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Faz o tema carregar antes de tudo
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- opções: latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          treesitter = true,
          telescope = true,
          mason = true,
          native_lsp = {
            enabled = true,
          },
        },
      })
      -- Ativa o tema
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
