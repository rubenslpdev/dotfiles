alias atualizar='sudo apt update && sudo apt upgrade -y'
alias instalar='sudo apt install'
alias remover='sudo apt remove'
alias search='apt search'
alias zshconfig="micro ~/.zshrc"
alias reload="source ~/.zshrc"
alias myip="hostname -i"
alias limpar='sudo apt autoremove -y && sudo apt autoclean && sudo apt clean && rm -rf ~/.local/share/Trash/*'
alias heat="watch -n 2 sensors"
alias quit="sudo shutdown -h now"
alias reboot="sudo reboot"
alias l="ls -hl"
alias battery="acpi -b"
alias fzf="fzf --preview 'batcat --color=always --style=numbers --line-range :500 {}'"
alias cat="batcat"
alias find="fdfind"
alias v="nvim"

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

mann () {man $1 | batcat -l man}
