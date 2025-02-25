# .bashrc

# User specific environment
PATH="$HOME/.local/bin:$PATH"
export PATH

######################
# ALIAS and SHORTHANDS
######################

# SVN update
alias upim="svn update --set-depth immediates"
alias upinf="svn update --set-depth infinity"

# SVN SpaceCam checkout
alias camcoall="svn co https://openprojgov.spacemicro.com/svn/cameras/ "$1" --depth immediates"
alias camcofw="svn co https://openprojgov.spacemicro.com/svn/cameras/FW/trunk "$1" --depth immediates"
alias camcosw="svn co https://openprojgov.spacemicro.com/svn/cameras/SW/trunk "$1" --depth immediates"

######################
# FUNCTIONS
######################

vivado2018_1() {
    source /opt/Xilinx/Vivado/2018.1/settings64.sh
}

vivado2018_2() {
    source /opt/Xilinx/Vivado/2018.2/settings64.sh
}

vivado2021_1() {
    source /opt/Xilinx/Vivado/2021.1/settings64.sh
}

coim() {
    svn checkout https://openprojgov.spacemicro.com/svn/cameras/"$1" --depth immediates -r "$2"
}

coinf() {
    svn checkout https://openprojgov.spacemicro.com/svn/cameras/"$1" --depth infinity -r "$2"
}

alias ks='ls'
alias celar='clear'
alias f='xdg-open "$(fzf)"'
bind '";s": "ls"'

# Starship
eval "$(starship init bash)"

# Bashmarks
source ~/.local/bin/bashmarks.sh
####### END ##########
