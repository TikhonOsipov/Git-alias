        pushb = !sh ~/pushBranch.sh
        pushc = !sh ~/pushSingleCommit.sh
        ch = checkout
        log1 = log --graph --pretty=format:"%Cgreen%H%Creset%x09%an%x09%ad%x09%s%Cred%d%Creset" --date=format:'%d-%m-%Y %H:%M'
        current = rev-parse --abbrev-ref HEAD
        reset1 = reset HEAD~
        pc = "!f() { if [ \"$1\" = \"\" ]; then echo "[git] I will not delete this branch!"; exit 0; fi; git push origin $1:git rev-parse --abbrev-ref HEAD; }; f"
        cd = "!f() { if [ \"$1\" = \"\" ]; then echo "[git] No branch specified"; exit 0; fi; git checkout $1; }; f"
        pref = "!f() { git push origin origin:refs/heads/git rev-parse --abbrev-ref HEAD; }; f"
