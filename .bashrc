alias n='netstat -anpt'
alias l='ls -laF'
alias p='ps auwwxf'
alias pp='ps auwwx -L'
alias scx='screen -x'
alias scc='screen'

export PS1="\[\033[01;35m\][\u\[\033[01;33m\]@sakura:\[\033[01;35m\]\w]$ \[\033[00m\]"
export SSH_AUTH_SOCK=`ls -l ${TMPDIR}/ssh-*/agent.* | awk '{print $9}' | sed -e "s/=$//" | tail -n 1`
export SSH_AGENT_PID=`ps -eo pid,args | grep ssh-agent | grep -v grep | awk '{print $1}' | tail -n 1`

alias dev='source ~/.bashrc && cd ~/DEV'
alias sdev='source ~/.bashrc && cd ~/SDEV'
alias sll="ssh -2 -v -l root"
alias smm="ssh -2 -v -l matsumoto_r"
alias ska='killall ssh-agent ; eval `ssh-agent` ; ssh-add ~/.ssh/id_rsa'
#export PKG_CONFIG_PATH=/lib/pkgconfig:/usr/lib/pkgconfig:/usr/lib64/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/Cellar/openssl/1.0.2k/lib/pkgconfig
alias ssload='source ~/.bashrc'
export PATH=/usr/local/opt/openssl/bin/:$PATH
alias pdev='cd ~/PDEV'
alias src='cd ~/src'

export CPATH=/usr/local/opt/openssl/include:$CPATH
export LIBRARY_PATH=/usr/local/opt/openssl/lib:$LIBRARY_PATH
#export PATH=/usr/local:$PATH

alias sync_matsumotory='rsync -auvz -e "ssh -p 2222" /Users/$USER/DEV/matsumotory/_site/* pupu.jp-matsumotory@ssh421.lolipop.jp:/home/users/0/pupu.jp-matsumotory/web/research/'
alias md2pfd='pandoc -V documentclass=ltjarticle --pdf-engine=lualatex'
#export PATH=/Library/TeX/texbin:$PATH
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"

export GOROOT=`go env GOROOT`
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias makepdf='platex $TARGET_TEX.tex && platex $TARGET_TEX.tex && dvipdfmx $TARGET_TEX.dvi'
alias makepdfo='platex $TARGET_TEX.tex && platex $TARGET_TEX.tex && dvipdfmx $TARGET_TEX.dvi && open -a preview $TARGET_TEX.pdf'
alias makepdfclean='rm $TARGET_TEX.{log,aux,dvi,out}'
