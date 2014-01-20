#!/bin/bash

COMMAND=$1

case $COMMAND in
    playpause)
        xdotool search --onlyvisible wimp key space
        ;;
    prev)
        /opt/WiMP/bin/WiMP previous
        ;;
    next)
        /opt/WiMP/bin/WiMP next
        ;;
    *)
        echo "Usage: $0 <command>" 1>&2
        echo "   Where <command> is:" 1>&2
        echo "      playpayse" 1>&2
        echo "      prev" 1>&2
        echo "      next" 1>&2
        exit 1
esac

