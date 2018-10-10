MSYSTEM=''
TITLEPREFIX=''

rb() {
    git branch -D $1;
    git push origin :$1;
}

uu() {
    git fetch upstream;
    git merge upstream/master;
}