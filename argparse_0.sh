#!/bin/sh
# This is an example of posix shell argument parsing
# it handles positional and optional arguments without using getopts

ARGS=
while [ $# -gt 0 ]; do
    case "$1" in
        -a|--opt-a)
            if [ -n "$2" ]; then
                echo "option A with argument: $2"
                shift 2
            else
                echo "option -a requires an argument."
                exit 1
            fi
            ;;
        -b|--opt-b)
            echo "option B"
            shift
            ;;
        -c|--opt-c)
            echo "option C"
            shift
            ;;
        *)
            ARGS="${ARGS:+${ARGS} }${1}"
            shift
            ;;
    esac
done

echo "positional rguments: $ARGS"
