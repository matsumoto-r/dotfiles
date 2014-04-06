alias n='netstat -anpt'
alias l='ls -laF'
alias p='ps auwwxf'
alias pp='ps auwwx -L'
alias scx='screen -x'
alias scc='screen'
alias vi='vim'

export PS1="\[\033[01;35m\][\u\[\033[01;33m\]@`hostname`:\[\033[01;35m\]\w]$ \[\033[00m\]"
export SSH_AUTH_SOCK=`ls -l /tmp/ssh-*/agent.* | grep $USER | awk '{print $9}' | sed -e "s/=$//" | tail -n 1`
export SSH_AGENT_PID=`ps awux | grep ssh-agent | grep $USER | grep -v grep | awk '{print $2}' | tail -n 1`

alias dev='source ~/.bashrc && cd ~/DEV'
alias sll="ssh -2 -v -l root"
alias smm="ssh -2 -v -l matsumoto_r"
alias ska='killall ssh-agent ; eval `ssh-agent` ; ssh-add ~/.ssh/id_rsa'
export PKG_CONFIG_PATH=/lib/pkgconfig:/usr/lib/pkgconfig:/usr/lib64/pkgconfig:/usr/local/lib/pkgconfig
