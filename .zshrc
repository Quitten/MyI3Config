export PATH=$HOME/bin:/usr/local/bin:/usr/lib/jvm/java-8-jdk/bin/:/home/barakt/.cargo/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-8-jdk/
export LANG=en_US.UTF-8
export LANGUAGE=es_US
export LC_ALL=C
export ZSH="/home/barak/.oh-my-zsh"
plugins=(git
	systemd)

source $ZSH/oh-my-zsh.sh

alias frc='sudo ~/projects/frc/frc.sh'
alias burp='~/scripts/burp.sh'
alias lsd='ls -d */'
alias opendir='thunar . > /dev/null 2>&1&'
alias lsf='ls -p | grep -v /'
alias py='python $1'
alias serach='grep -R "$1" .'
alias install='sudo pacman -S $1'
alias headphones='bluetoothctl power off;bluetoothctl power on;bluetoothctl connect 34:DF:2A:40:8B:6B'
alias mirrorfix='sudo pacman -Syyu'
alias wifi='python ~/scripts/wifi-helper.py'
alias killall='~/scripts/killall.sh'

search() {
    grep -R "$1" .
}

compileAndRun() {
    gcc "$1" -o "${1::-2}"
    chmod +x "${1::-2}"
    ./"${1::-2}"
}

cd() {
    builtin cd "$@"
    echo `pwd` > /tmp/.currentdir
}

if [ -f /tmp/.currentdir ]; then
   builtin cd `cat /tmp/.currentdir`
fi


# PS1='\[\e]0;\t@\h: \w\a\]${debian_chroot:+($debian_chroot)}\t@\h:\w\$ '

source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]] 
then
		exec sway
fi

