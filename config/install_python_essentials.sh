#!/bin/bash

if [ `which apt-get` ]; then
    apt-get install -y --no-install-recommends python3-pip python3-venv
fi

# Package Management
pip3 --no-cache-dir install pipdeptree pipx
python3 -m pipx ensurepath
pipx install pipenv
pipx install poetry

# HTTP Utilities
pip3 --no-cache-dir install splinter
pipx install httpie

# Productivity
pip3 --no-cache-dir install black flake8 isort konch
