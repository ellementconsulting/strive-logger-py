#!/bin/bash

changes="$(git diff HEAD~1 HEAD setup.py | grep version=)"

# echo "[ $changes ]"
if [ "$changes" != "" ]; then
    version="$(cat setup.py | grep "version=" | cut -d"=" -f 2 | cut -d "\"" -f 2)"
    echo $version
fi