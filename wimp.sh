#!/bin/bash

COMMAND=$1

WiMP=$(readlink -e /proc/$(pidof WiMP)/exe)
if [ -z $WiMP ]; then
    echo "WiMP not found" 1>&2
    exit 1
fi

case $COMMAND in
    playpause)
        xdotool search --onlyvisible wimp key space
        ;;
    prev)
        $WiMP previous
        ;;
    next)
        $WiMP next
        ;;
    *)
        echo "Usage: $0 <command>" 1>&2
        echo "   Where <command> is:" 1>&2
        echo "      playpause" 1>&2
        echo "      prev" 1>&2
        echo "      next" 1>&2
        exit 1
esac

