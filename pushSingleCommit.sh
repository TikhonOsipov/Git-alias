#!/bin/bash
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
CYAN='\033[1;34m'
NC='\033[0m' # No Color

branch=`git current`
if [ \"$1\" != \"\" ]; then c=$1; echo ${YELLOW}selected commit: $c${NC}; else c=`git rev-parse HEAD`; fi;
echo "====="
echo "Current branch: ${CYAN}$branch${NC}"
echo `git show --quiet $c`
echo "====="
echo "Is the commit and branch name correct? Will do 'git push origin ${GREEN}$c${NC}:${YELLOW}$branch${NC}'"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "doing git push origin $c:$branch"
git push origin $c:$branch

#Black        0;30     Dark Gray     1;30
#Red          0;31     Light Red     1;31
#Green        0;32     Light Green   1;32
#Brown/Orange 0;33     Yellow        1;33
#Blue         0;34     Light Blue    1;34
#Purple       0;35     Light Purple  1;35
#Cyan         0;36     Light Cyan    1;36
#Light Gray   0;37     White         1;37
