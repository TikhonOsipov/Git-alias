#!/bin/bash
c=`git current`
echo "====="
echo "Current branch: $c"
echo "====="
echo "Is the branch name correct? Will do 'git pull origin $c'"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "doing git pull origin $c"
git pull origin $c

