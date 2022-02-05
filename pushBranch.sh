#!/bin/bash
c=`git current`
echo "====="
echo "Current branch: $c"
echo "====="
echo "Is the branch name correct? Will do 'git push origin origin:refs/heads/$c'"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "doing git push origin origin:refs/heads/$c"
git push origin origin:refs/heads/$c

