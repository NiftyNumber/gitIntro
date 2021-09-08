#! Local Git Repository (.git file)
#* Local File  --> Staging Area --> Local Git Rep
#* Initialize git in the working directory.
git init

git config --global user.email "root931@hotmail.com"
git config --global user.name "lc"

#* Staging Area (Middle Ground) is a location where the files that you want to commit should be added to.
# You can choose files to add to Staging Area
#* You might not want to track all files.
# See what files are in the git Staging Area
git status

#* Add desired files to the Staging Area that you want to track changes
git add gitIntro.sh

#* Add all files in the Staging Area
git add .

#* Remove all files from the Staging Area 
git rm --cached -r .

#* Commit changes
#! Commet in Present tense, you are doing it now
git commit -m "Complete Initial Version"

# See what commit you have made
git log
#* exit log with 'q' or 'z'

#* Unique commits are stored in hash: e.g. 37430d63b0560b569eea7f5c70e5e70a2385f871

#* Check out the difference between curreent version and latest commit
git diff gitIntro.sh

#* Rollback to previous commit for specified files or all files
git checkout gitIntro.sh
git checkout .

#! Remote Git using GitHub
#* User user name and access token to access GitHub in command line
#* https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token

#* Local File --> Staging Area --commit--> Local Git Rep --git push--> Remote Git Rep (GitHub)
#! Local and remote git rep and run parallel with each other

#* create remote repository on GitHub
#* origin is the name of the remote Git repository
git remote add origin https://github.com/root931/gitIntro.git
git branch -M master
#* Push local repository to remote repository using the u option
#* u option linkups remote and local repository
#* master branch of remote location origin
git push -u origin master

#* gitignore: prevent committing certain files to git
#! do not let api/access token become public (there are bots that scans for sensitive info)
#* .DS_Store files: store settings on macOS

#* create gitignore
touch .gitignore

#* Add files you want to hide to .gitignore
#* List of gitignore templates: https://github.com/github/gitignore

#! Cloning git repository
git clone https://github.com/austinzheng/iOS-2048.git

#! Creating new branch
#! Use branch to develop new functionality and merge with master branch
git branch subBranch1

#* Check what branch you have
git branch
#! asterisk indicates what branch you are currently on.

#! Switching to subBranch1 from master branch
git checkout subBranch1

#! Merge master and subBranch1
#! Switch to master first then merge
git merge subBranch1
#* You can add merge information after the merge

#! Pull request on GitHub
#* Use pull request to pull branches to merge with master branch.
#* Also possible with command line: https://stackoverflow.com/questions/46480796/git-syntax-for-pull-request-on-the-command-line

#! If you made changes on GitHub do the following to sync with local git rep
#* https://www.koskila.net/how-to-git-merge-upstream/

git remote add upstream https://github.com/root931/gitIntro.git
git fetch upstream
git merge upstream/master

#! https://learngitbranching.js.org/
#! Git Rebase
#* Rebase takes a set of commits, "copies" them and plops them in front of somewhere else.
#* Rebase makes the commits linear instead of have multiple branches.
git checkout subBranch1
#* Takes commits from subBranch1 and put in front to master
git rebase master

#! HEAD: currently checked out commit (HEAD is a commit, similar to a hash)
#* HEAD always points to the most recent commit
#* Detaching HEAD: attach HEAD to a commit hash instead of a branch
#* hash represent the commit
git checkout 37430d63b0560b569eea7f5c70e5e70a2385f871

#! Relative Refs
#* Caret (^) operator: find the parent of the specified commit (go backwards one commit in the commit tree)
#* First parent of main
git chekcout main^

#* tilde (~) operator: takes a number that specifies the number of parents you would like to go backwards.
#! -f option: reassign a branch to a commit (commit position relative to HEAD or hash)
#* Move main branch to three parents behind HEAD's position.
git branch -f main HEAD~3
#* Move main branch to commit with hash.
git branch -f main 37430d63b0560b569eea7f5c70e5e70a2385f871


#! Reversing Changes in Git
#* git reset: move a branch backwards as if the commit had NEVER been made in the first place. Applies to local git repository.
git reset HEAD~1

#* git revert: reverse changes and share those reversed changes with others.
#* git revert makes new commit that reverses the specified commit
git revert HEAD

#! Git Cherry-pick: copy a series of commits below HEAD
#* git cherry-pick <commit1-hash> <commit3-hash>
git cherry-pick C3 C4 C7

#! Git Interactive Rebase: review a series of commits you are about to rebase
#* use the -i option to rebase
#* rebase in front of position 4 parents before HEAD
git rebase -i HEAD~4