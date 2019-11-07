#!/bin/bash

# Package Management
pip3 --no-cache-dir install \
    pipdeptree \
    pipenv

# HTTP Utilities
pip3 --no-cache-dir install \
    splinter \
    httpie

# Productivity
pip3 --no-cache-dir install \
    flake8 \
    isort \
    konch
