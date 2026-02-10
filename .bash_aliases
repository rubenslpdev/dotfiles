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
