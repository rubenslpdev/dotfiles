alias atualizar='manutencao'
alias instalar='sudo apt install'
alias remover='sudo apt remove'
alias search='apt search'
alias zshconfig="micro ~/.zshrc"
alias reload="source ~/.zshrc"
alias myip="hostname -i"
alias quit="sudo shutdown -h now"
alias reboot="sudo reboot"
alias l="ls -hl"
alias fzf="fzf --preview 'batcat --color=always --style=numbers --line-range :500 {}'"
alias cat="batcat"
alias find="fdfind"
alias v="nvim"

# Programas
alias buy='cd ~/Projetos/python/to_buy && python3 main.py && cd - > /dev/null'
alias livros='cd ~/Projetos/python/livros_lidos/cli/ && python3 main.py && cd - > /dev/null'

# Github push
gpush() {
    # 1. Verifica se há algo para commitar
    if [ -z "$(git status --porcelain)" ]; then
        echo "⚠️  Nada para enviar: o repositório está limpo."
        return
    fi

    # 2. Pergunta a mensagem de commit
    echo "📝 Digite a mensagem do commit:"
    read mensagem

    # 3. Se a mensagem for vazia, cancela
    if [ -z "$mensagem" ]; then
        echo "❌ Erro: A mensagem não pode ser vazia. Push cancelado."
        return
    fi

    # 4. Executa os comandos
    git add .
    git commit -m "$mensagem"
    git push

    echo "✅ Sucesso! Tudo enviado para o GitHub."
}

# Man turbinado

mann () {man $1 | batcat -l man}

# Função para atualização e manutenção do sistema

manutencao() {
    echo "--- 1. Atualizando Lista de Repositórios e Pacotes ---"
    sudo apt update && sudo apt upgrade -y

    echo "\n--- 2. Removendo Pacotes Desnecessários (Órfãos) ---"
    # O autoremove no Ubuntu é bem eficiente para limpar kernels antigos e dependências
    sudo apt autoremove -y

    echo "\n--- 3. Limpando o Cache do APT ---"
    # O 'autoclean' remove apenas arquivos de pacotes que não podem mais ser baixados
    # O 'clean' removeria tudo, mas o autoclean é mais seguro para o dia a dia
    sudo apt autoclean

    echo "\n--- 4. Limpando Logs do Systemd (manter apenas os últimos 2 dias) ---"
    sudo journalctl --vacuum-time=2d

    echo "\n--- 5. Limpando Cache de Miniaturas e Temporários ---"
    rm -rf ~/.cache/thumbnails/*

    echo "\n--- Concluído! Sistema Ubuntu limpo e atualizado. ---"
}


#Yazi (file manager)

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
