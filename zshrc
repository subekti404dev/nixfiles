# zsh
export ZSH=~/.nix-profile/share/oh-my-zsh
ZSH_THEME="josh"
plugins=(git node golang)
source $ZSH/oh-my-zsh.sh


if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
    

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

