#!/bin/bash

for script in `ls ./config`; do
    source "config/${script}"
done

