ZSH_THEME="josh"

export ZSH="~/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

plugins=(git node golang)

# source bash_profile
if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi

# java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# go
export PATH="$PATH:$(go env GOPATH)/bin"
export GOPATH=$HOME/go

# android-studio
export ANDROID_HOME=/home/urip/Android/Sdk
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk-bundle
export PATH=$PATH:$ANDROID_SDK/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# other path
export PATH=$PATH:$HOME/.bin
export PATH=/snap/bin:$PATH
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/home/urip/.platformio/penv/bin

# other env variables
export EDITOR=nano

# custom aliases
alias zcfg="nano ~/.zshrc"
alias zcfgs="source ~/.zshrc"
alias cl="clear"
alias getpid="xprop _NET_WM_PID | cut -d' ' -f3"
alias cpp="cd /media/urip/Data/Koding/personal"
alias cdd="cd ~/Downloads"
alias sapi="sudo apt install"
alias sapp="sudo apt purge"
alias sapr="sudo apt remove"
alias sapa="sudo apt autoremove"
alias sapu="sudo apt update"
alias snapi="sudo snap install"
alias snapr="sudo snap remove"
alias scrcpy="ADB=~/Android/Sdk/platform-tools/adb scrcpy"
alias adbdv="adb devices"
alias adbc="adb connect"
alias adbdc="adb disconnect"
alias open="nautilus"
alias spd="speedtest"
alias s="sudo"
alias uber-apk-signer="java -jar ~/.uber-apk-signer.jar --apk"
alias docker-explorer="docker run -it --rm=true"
