# some more ls aliases
# ====================
# basic alias
# ====================
alias ll='ls -l'
alias la='ls -la'
alias lc='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'
alias da='df -a'                # vmの容量確認
alias duh='du -h --max-depth=1' # vmの容量確認(そのディレクトリ以下を対象)
#alias rm='rm -i'               # 削除時に確認を行う
#alias rmd='rmdir -i'           # 削除時に確認を行う
alias sshab='ssh-agent bash'    # ssh-agentを消す
alias sshad='ssh-add'           # sshをvm上に保持
alias sshps='ps -elf | grep ssh-agent'      # 保持しているssh-agentを確認
alias tm='tmux -u'                  # tmux接続(日本語対策)
alias ta='tmux attach'              # tmux session接続
alias tat='tmux attach -t'          # tmux session接続(セッション番号指定. 例：tat 1)
alias tl='tmux list-session'        # tmuxのセッション一覧を表示
alias myalias="grep alias ~/.bashrc | nkf -w8" # 自分の設定したエイリアスを見る

# ====================
# grep
# ====================
alias ls="ls -lFh"              # lsをデフォルトで詳細表示に
alias hgrep="history | grep"    # 指定したワードをヒストリから探す
alias phpgrep="find . -type f -name '*.php' -print0 | xargs -0 grep -n" # 指定した単語を今いる階層より下のphpファイルに対して調べる
alias tplgrep="find . -type f -name '*.tpl' -print0 | xargs -0 grep -n" # 指定した単語を今いる階層より下のtplファイルに対して調べる
alias jsgrep="find . -type f -name '*.js' -print0 | xargs -0 grep -n"   # 指定した単語を今いる階層より下のjsファイルに対して調べる
alias cssgrep="find . -type f -name '*.css' -print0 | xargs -0 grep -n" # 指定した単語を今いる階層より下のcssファイルに対して調べる
alias shgrep="find . -type f -name '*.sh' -print0 | xargs -0 grep -n"   # 指定した単語を今いる階層より下のshファイルに対して調べる
alias allgrep="find . -type f -print0 | xargs -0 grep -n"               # 指定した単語を今いる階層より下の全てのファイルに対して調べる
# ====================
# log
# ====================
alias plog="view /var/log/php.log"                          # phpログをvimで
alias plogtail="tail -F /var/log/php.log"                   # phpログをtailで
alias alog="sudo view /var/log/apache/error.log"            # apacheのerrorログをvimで
alias alogtail="sudo tail -F /var/log/apache/error.log"     # apacheのerrorログをtailで
alias aalog="sudo view /var/log/apache/access.log"          # apacheのaccessログをvimで
alias aalogtail="sudo tail -F /var/log/apache/access.log"   # apacheのaccessログをtailで
# ====================
# others
# ====================
#gitリポジトリにhttpsでアクセスしたときに怒られる対処法
export GIT_SSL_NO_VERIFY=1
