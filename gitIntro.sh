#* Local Git Repository (.git file)
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

#* Commit changes
#! Commet in Present tense, you are doing it now
git commit -m "Complete Initial Version"

# See what commit you have made
git log

#* Unique commits are stored in hash: e.g. 37430d63b0560b569eea7f5c70e5e70a2385f871

#* Check out the difference between curreent version and latest commit
git diff gitIntro.sh

#* Rollback (checkout) to previous commit
git checkout gitIntro.sh
git checkout .

#* Remote Git using GitHub
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