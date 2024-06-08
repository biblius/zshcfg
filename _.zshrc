eval `ssh-agent -s`

alias pi2='ssh root@192.169.0.69'
alias pi3='ssh root@192.169.0.169'

ssh-add /home/biblius/.ssh/gogs_id_ed25519
ssh-add /home/biblius/.ssh/gh_id_ed25519
ssh-add /home/biblius/.ssh/pi
ssh-add /home/biblius/.ssh/pi3

source $HOME/.zsh/.zshrc
