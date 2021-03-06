
#Django stuff
alias djrun="source /home/fergalm/dev/personal/deepsouthsounds.com/dss.docker/api_env && python manage.py runserver 0.0.0.0:8001"
alias djshell="python manage.py shell_plus --use-pythonrc --ipython"
alias djdb="python manage.py dbshell"
alias djmigrate="python manage.py schemamigration spa --auto"
alias wole="source ./env/bin/activate"

alias dss="cd ~/dev/personal/deepsouthsounds.com/dss.api && workon dss.api"
alias dss_radio="cd ~/dev/personal/deepsouthsounds.com/dss.radio && workon dss.radio && docker start dssdocker_icecast_1"

alias pgdo="sudo -u postgres"
alias sqlw="sqlw &"
alias se="/opt/StorageExplorer/StorageExplorer > /dev/null 2>&1 &"
alias dbv="dbeaver > /dev/null 2>&1 &"
alias rsl="rslsync --config /home/fergalm/.config/resilio-sync/config.json"

alias reloadbashrc="source ~/.bashrc"
alias server="livereload -p 9999"
# alias server="python -m SimpleHTTPServer 9999"
alias upd="sudo apt update && sudo apt dist-upgrade && sudo apt autoremove"
alias psql="sudo -u postgres psql deepsouthsounds"
alias code="/usr/bin/code-insiders"

alias dbstatus="dropbox.py status"
alias dbignore='find `pwd` -type d -regex ".*\(node_modules\|temp\|tmp\|bower_components\|cache\)$" -prune -exec dropbox exclude add {} \;'
alias dbrm="find . -name \*\'s\ conflicted\ copy\ \* -exec rm  {} \;"

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias iotop='sudo iotop'
alias rmq=' sudo rabbitmqctl'
alias congo='node /srv/dev/working/congo/server.js'

alias zap='/home/fergalm/working/ZAP/zap.sh > /dev/null 2>&1 &'
alias git-browse="xdg-open \`git remote -v | grep git@github.com | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/:/\//' -e 's/git@/http:\/\//'\`"

alias andconnect='adb connect 10.1.1.102:5555'

doAgFind(){
    ag --ignore-dir node_modules --ignore-dir bower_components $1
}
alias ag=doAgFind

doGrepSearch(){
    find | grep $1
}
alias f=doGrepSearch

doPsKill(){
    sudo ps aux | grep -ie $1 | awk '{print $2}' | xargs kill -9
}
alias pskill=doPsKill

if type "$docker" >  /dev/null; then
    alias docker-nuke="docker rm $(docker ps -a -q) && docker rmi $(docker images -q)"
    alias dc='docker-compose'
    alias docker-rm-untagged='docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")'
fi

