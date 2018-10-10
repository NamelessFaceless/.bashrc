MSYSTEM=''
TITLEPREFIX=''

function color_my_prompt {
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\\\\\1\/`'
    local __prompt_tail="\[\033[35m\]>"
    local __prompt_divider="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host$__cur_location$__last_color$__prompt_divider$__git_branch_color$__git_branch$__prompt_tail$__last_color"
}
color_my_prompt

rb() {
    git branch -D $1;
    git push origin :$1;
}

uu() {
    git fetch $1;
    git merge $1/master;
}
