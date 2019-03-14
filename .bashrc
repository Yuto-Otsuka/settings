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
alias da='df -a'                # vm�����̳�ǧ
alias duh='du -h --max-depth=1' # vm�����̳�ǧ(���Υǥ��쥯�ȥ�ʲ����о�)
#alias rm='rm -i'               # ������˳�ǧ��Ԥ�
#alias rmd='rmdir -i'           # ������˳�ǧ��Ԥ�
alias sshab='ssh-agent bash'    # ssh-agent��ä�
alias sshad='ssh-add'           # ssh��vm����ݻ�
alias sshps='ps -elf | grep ssh-agent'      # �ݻ����Ƥ���ssh-agent���ǧ
alias tm='tmux -u'                  # tmux��³(���ܸ��к�)
alias ta='tmux attach'              # tmux session��³
alias tat='tmux attach -t'          # tmux session��³(���å�����ֹ����. �㡧tat 1)
alias tl='tmux list-session'        # tmux�Υ��å���������ɽ��
alias myalias="grep alias ~/.bashrc | nkf -w8" # ��ʬ�����ꤷ�������ꥢ���򸫤�

# ====================
# grep
# ====================
alias ls="ls -lFh"              # ls��ǥե���ȤǾܺ�ɽ����
alias hgrep="history | grep"    # ���ꤷ����ɤ�ҥ��ȥ꤫��õ��
alias phpgrep="find . -type f -name '*.php' -print0 | xargs -0 grep -n" # ���ꤷ��ñ��򺣤��볬�ؤ�겼��php�ե�������Ф���Ĵ�٤�
alias tplgrep="find . -type f -name '*.tpl' -print0 | xargs -0 grep -n" # ���ꤷ��ñ��򺣤��볬�ؤ�겼��tpl�ե�������Ф���Ĵ�٤�
alias jsgrep="find . -type f -name '*.js' -print0 | xargs -0 grep -n"   # ���ꤷ��ñ��򺣤��볬�ؤ�겼��js�ե�������Ф���Ĵ�٤�
alias cssgrep="find . -type f -name '*.css' -print0 | xargs -0 grep -n" # ���ꤷ��ñ��򺣤��볬�ؤ�겼��css�ե�������Ф���Ĵ�٤�
alias shgrep="find . -type f -name '*.sh' -print0 | xargs -0 grep -n"   # ���ꤷ��ñ��򺣤��볬�ؤ�겼��sh�ե�������Ф���Ĵ�٤�
alias allgrep="find . -type f -print0 | xargs -0 grep -n"               # ���ꤷ��ñ��򺣤��볬�ؤ�겼�����ƤΥե�������Ф���Ĵ�٤�
# ====================
# log
# ====================
alias plog="view /var/log/php.log"                          # php����vim��
alias plogtail="tail -F /var/log/php.log"                   # php����tail��
alias alog="sudo view /var/log/apache/error.log"            # apache��error����vim��
alias alogtail="sudo tail -F /var/log/apache/error.log"     # apache��error����tail��
alias aalog="sudo view /var/log/apache/access.log"          # apache��access����vim��
alias aalogtail="sudo tail -F /var/log/apache/access.log"   # apache��access����tail��
# ====================
# others
# ====================
#git��ݥ��ȥ��https�ǥ������������Ȥ����ܤ����н�ˡ
export GIT_SSL_NO_VERIFY=1
