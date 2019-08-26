#!/bin/bash
IFS=","

echo "Script name: $0"
echo "First Arg: $1"
echo "Second arg: $2"
echo "All args: \$@: $@" # if we want to see @ in the output, we need to append \$@
echo "All args: \$*: $*"
echo "Argument Count: $#"
