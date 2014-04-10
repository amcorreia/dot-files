# Functions
hex2ip() {
    if [ ! -z $1 ]; then
        ip1=$(echo $1 | cut -b1-2)
        ip2=$(echo $1 | cut -b2-3)
        ip3=$(echo $1 | cut -b3-4)
        ip4=$(echo $1 | cut -b4-5)

        printf "%d.%d.%d.%d\n" 0x$ip1 0x$ip2 0x$ip3 0x$ip4 
    fi
}

ip2hex() {
    if [ ! -z $1 ]; then
        q1=$(echo $1 | cut -d. -f1)
        q2=$(echo $1 | cut -d. -f2)
        q3=$(echo $1 | cut -d. -f3)
        q4=$(echo $1 | cut -d. -f4)

        printf "%x%x%x%x\n" $q1 $q2 $q3 $q4
    fi
}

git-branch-name() {
    git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}

git-branch-prompt() {
    local branch=`git-branch-name`
    if [ $branch ]; then printf " [%s]" $branch; fi
}


