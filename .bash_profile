
# nvm environment set
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PS1="\[\033[1;36m\][\!] \`if [ \$? = 0 ]; then echo \[\e[33m\]\>_O\[\e[0m\]; else echo \[\e[31m\]O\.O\[\e[0m\]; fi\` [\u@\h:\w]\\$ "

#set my path
ENVP="/Users/david/environment/"
ENVPALL=""
for file in $ENVP*
do
    if [ -d "$file" ]; then
        if [ -d "$file/bin" ]; then
            ENVPALL="$file/bin:$ENVPALL"
        fi
    fi
done
export PATH="/Users/david/bin:$ENVPALL$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH

