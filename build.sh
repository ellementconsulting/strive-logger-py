#!/bin/bash

pip install -r build twine
rm -rf dist/
python -m build