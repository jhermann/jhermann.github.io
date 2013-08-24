#! /bin/bash
set -e
projectdir=$(cd $(dirname $0) && pwd)

jekyll_running() {
    jekyll_pid=0
    for pid in $(pgrep -f "/jekyll "); do
        dir="/$(pwdx $pid | cut -f2- -d/)"
        if test "$dir" = "$projectdir"; then
            jekyll_pid=$pid
            return 0
        fi
    done
    return 1
}


case "$1" in
    start)
        if jekyll_running; then
            echo "Jekyll already running for $projectdir [PID=$jekyll_pid]"
        else
            jekyll serve --watch >jekyll.log 2>&1 &
            disown
            sleep .5
        fi
        xdg-open "http://localhost:4000/"
        ;;
    stop)
        if jekyll_running; then
            kill $jekyll_pid
        else
            echo "No running Jekyll process found for $projectdir"
        fi
        ;;
    *)
        echo "usage: $(basename $0) start|stop"
        exit 1
        ;;
esac

