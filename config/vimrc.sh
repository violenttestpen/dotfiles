#!/bin/bash

LGRAY='\033[0;37m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

FILENAME='vimrc'
NEW_FILENAME='.vimrc'

SRC_PATH="dotfiles/${FILENAME}"
DEST_PATH="${HOME}/${NEW_FILENAME}"

echo -e "${LGRA}[*] Executing ${FILENAME}.sh...${NC}"

cat $SRC_PATH > $DEST_PATH

echo
[ $? -eq 0 ] && echo -e "${GREEN}[+] Execution is successful!${NC}" || echo -e "${RED}[-] Execution failed.${NC}"
echo
