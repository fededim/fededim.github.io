# Git Cheatsheet
© Federico Di Marco <fededim@gmail.com> - MIT LICENSE 

This is a short GIT cheatsheet guide which I have been writing and keeping updated since I started working with GIT in 2014.

**Show repositories**<br/>
git remote -v<br/>

**Switch to a existing branch**<br/>
git checkout \<branch_name\><br/>

**Switch to a remote only existing branch**<br/>
git checkout -t \<origin/branch_name\><br/>

**Create and checkout a new branch**<br/>
git checkout -b \<branch_name\><br/>

**See what's modified in local folder**<br/>
git status<br/>

**Stage all local changes**<br/>
git add --all

**Commit all local changes**<br/>
git commit -m "\<commit message\>"<br/>

**Amend last commit message**<br/>
git commit --amend -m "\<new commit message\>"<br/>

**Push changes (safe)**<br/>
git push

**Push changes (nuking all remote changes, caution use it wisely)**<br/>
git push --force

**Merge**<br/>
git fetch<br/>
git merge \<branch_name\><br/>
git push<br/>

**Resolving manual conflicts (for each file) - Keep local file**<br/>
git checkout --ours \<file_name\><br/>

**Resolving manual conflicts (for each file) - Keep remote file**<br/>
git checkout --theirs \<file_name\><br/>

**Continue a merge/rebase after having solved the conflicts**<br/>
git rebase --continue<br/>

**Stop a merge/rebase**<br/>
git rebase --abort<br/>

**Merge and keep remote files for all conflicts (upstream remote repo)**<br/>
git fetch upstream<br/>
git merge --strategy-option theirs upstream/master<br/>
git push origin<br/>

**Merge and keep local files for all conflicts (upstream remote repo)**<br/>
git fetch upstream<br/>
git merge --strategy-option ours upstream/master<br/>
git push origin<br/>

**See commit log**<br/>
git log<br/>

**Clone and commit a commit from another branch into current one**<br/>
git cherry-pick \<commit id\>

**Clone without committing (for modifying something) a commit from another branch into current one**<br/>
git cherry-pick -n \<commit id\>

**Nuke last commit (pay attention)**<br/>
git reset --hard HEAD^1<br/>
git push --force<br/>

**Undoes last commit keeping changes in local folder (pay attention)**<br/>
git reset --keep HEAD^1<br/>
git push --force<br/>

**Clean untracked files**<br/>
git clean -f -d<br/>

**Squash last n commits**<br/>
git rebase --interactive HEAD~n (n is the number of commits)<br/>
<br/>
an editor pops up, change **pick** to **s** for any commits you want to squash<br/>
as soon as you save you are prompted again with the comment of the new merged commit which by<br/> default is the sum of comments of all merged commits<br/>

**Save uncommitted local changes (like TFS shelveset) for switching branches**<br/>
git stash<br/>

**List saved stashes**<br/>
git stash list<br/>

**Revert to a saved stash**<br/>
git stash apply@{number} (number is one in the git stash list output)<br/>

**Git add a worktree for a particular branch**<br/>
go to the master branch of your repo<br/>
git worktree add \<relative folder\> <branch name><br/>

**Clear Git credentials**<br/>
git credential-cache exit<br/>

**Track for changes in commit history of some lines of code or a function**<br/>
git log -L \<startline\>,\<end line\>:\<path to filename\><br/>
git log -L :\<function name\>:\<path to filename\><br/>

