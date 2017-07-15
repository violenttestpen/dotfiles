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

VIM_AUTOLOAD_DIR="${HOME}/.vim/autoload"
VIM_PLUG_URL='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir $VIM_AUTOLOAD_DIR -p
[ ! -f "${VIM_AUTOLOAD_DIR}/plug.vim" ] && [ `which curl 2>/dev/null` ] && curl $VIM_PLUG_URL > "${VIM_AUTOLOAD_DIR}/plug.vim"
[ ! -f "${VIM_AUTOLOAD_DIR}/plug.vim" ] && [ `which wget 2>/dev/null` ] && wget $VIM_PLUG_URL -O "${VIM_AUTOLOAD_DIR}/plug.vim"

