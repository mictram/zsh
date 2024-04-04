# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/michael/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep
# End of lines configured by zsh-newuser-install

# oh-my-zsh plugins
plugins=(
  vi-mode
)

# Powerlevel10k
# https://github.com/romkatv/powerlevel10k
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias push-all='git remote | xargs -L1 git push --all'

# Python executables path
export PATH="$PATH:$HOME/.local/bin"

#source /usr/bin/virtualenvwrapper.sh
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

export PASSWORD_STORE_DIR=~/Nextcloud/.password-store

#alias hiviz-pass="export PASSWORD_STORE_DIR=~/Nextcloud/HiViz/.password-store.hiviz"
#alias my-pass="export PASSWORD_STORE_DIR=~/Nextcloud/.password-store"

alias win11sync="rsync -r ../BG2S-PC-Config-Tool/ win11:~/Projects/BG2S-PC-Config-Tool/"

alias nvd="optimus-manager --no-confirm --switch nvidia"
alias int="optimus-manager --no-confirm --switch integrated"

export PATH="$PATH:$HOME/.nix-profile/bin"

alias stp-user="/home/michael/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32CubeProgrammer"
alias stp-sudo="/usr/local/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32CubeProgrammer"

alias libvirt-default-network-start="sudo virsh net-start default"

alias add-hvc-deps="poetry add git+ssh://git@github.com:HiVizLEDs/hvc-cli.git#dev git+ssh://git@github.com:HiVizLEDs/python-hvc.git#dev"
eval "$(atuin init zsh)"

alias net-virt="sudo virsh net-start default"

alias ts-fix="sudo systemctl restart systemd-resolved && sudo systemctl restart tailscaled"
alias ts-hiviz="sudo tailscale switch michael.ramos@hivizleds.com"
alias ts-me="sudo tailscale switch mictram@github"

export PATH="$PATH:/opt/lua-language-server/build/bin"
export PATH="$PATH:$HOME/.cargo/bin"

alias up="sudo apt update && sudo apt upgrade -y && flatpak update -y"

alias nmb="rm -r {application,bootloader}/nbproject/Makefile-*; rm -r {application,bootloader}/{build,debug,dist}; prjMakefilesGenerator application/. && make -j16 -C application"

alias save-work='git add . && git commit -m "saving work" && git push origin $(git rev-parse --abbrev-ref HEAD)'

alias sync-fw='rsync -r --delete ~/Nextcloud/Firmware/ pi@100.77.241.40:~/Firmware'

alias randomsay='fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)'
