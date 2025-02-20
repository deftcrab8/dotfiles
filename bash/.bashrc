# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

source /opt/Xilinx/Vivado/2018.1/settings64.sh

# ENV_VARs
export SIGASI_AI_MODEL="gpt-4o"
export SIGASI_AI_API_KEY="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"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

######################
# ALIAS and SHORTHANDS
######################

# SVN update 
alias upim="svn update --set-depth immediates"
alias upinf="svn update --set-depth infinity"
alias coim="svn checkout "$1" --depth immediates"
alias coinf="svn checkout "$1" --depth infinity"

# SVN SpaceCam checkout
alias camcoall="svn co https://openprojgov.spacemicro.com/svn/cameras/ "$1" --depth immediates"
alias camcofw="svn co https://openprojgov.spacemicro.com/svn/cameras/FW/trunk "$1" --depth immediates"
alias camcosw="svn co https://openprojgov.spacemicro.com/svn/cameras/SW/trunk "$1" --depth immediates"

srcviv_18_2 () {
    /opt/Xilinx/Vivado/2018.2/settings64.sh
}

srcviv_18_1 () {
    /opt/Xilinx/Vivado/2018.1/settings64.sh
}
export PATH=/opt/Xilinx/Vivado/2018.2/bin:$PATH


alias ks='ls'
alias celar='clear'
alias f='xdg-open "$(fzf)"'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
bind '";s": "ls"'

####### END ##########

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
export PATH="$HOME/.local/bin:$PATH"
