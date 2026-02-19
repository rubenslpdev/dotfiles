return {
  "goolord/alpha-nvim",
  event = "VimEnter", -- Carrega o plugin assim que o Neovim inicia
  dependencies = { 
    "nvim-tree/nvim-web-devicons" 
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- 1. Cabeçalho (Header)
    dashboard.section.header.val = {
	[[=================     ===============     ===============   ========  ========]],
	[[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
	[[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
	[[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
	[[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
	[[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
	[[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
	[[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
	[[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
	[[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
	[[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
	[[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
	[[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
	[[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
	[[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
	[[||.=='    _-'                                                     `' |  /==.||]],
	[[=='    _-'                        N E O V I M                         \/   `==]],
	[[\   _-'                                                                `-_   /]],
	[[ `''                                                                      ``' ]],
    }

    -- 2. Menu de Atalhos
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Buscar Arquivo", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Arquivos Recentes", ":Telescope oldfiles<CR>"),
      dashboard.button("g", "  Buscar Texto", ":Telescope live_grep<CR>"),
      dashboard.button("c", "  Configuração", ":e $MYVIMRC <CR>"),
      dashboard.button("q", "  Sair", ":qa<CR>"),
    }

    -- 3. Configurando a lista de arquivos recentes (MRU)
    -- O tema 'dashboard' do Alpha já busca os arquivos recentes automaticamente.
    -- Vamos apenas ajustar o visual para ficar centralizado e limpo.
    dashboard.opts.layout[1].val = 8 -- Espaço no topo

    -- 4. Rodapé (Footer) - Opcional: mostra quantos plugins carregaram
    local stats = require("lazy").stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    dashboard.section.footer.val = "⚡ Neovim carregou " .. stats.count .. " plugins em " .. ms .. "ms"
    dashboard.section.footer.opts.hl = "Type"

    alpha.setup(dashboard.opts)
  end,
}
