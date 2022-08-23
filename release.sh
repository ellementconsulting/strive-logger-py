#!/bin/bash

if [ "$1" == "" ]; then
    echo "Password is required"
    exit 1
fi

python -m twine upload -u __token__ -p $1 --repository testpypi dist/*