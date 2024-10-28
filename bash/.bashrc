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

alias upim="svn update --set-depth immediates"
alias upinf="svn update --set-depth infinity"
alias coim="svn checkout "$1" --depth immediates"
alias coinf="svn checkout "$1" --depth infinity"

alias source_vivado="/opt/Xilinx/Vivado/2018.1/settings64.sh"

alias ks='ls'

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
