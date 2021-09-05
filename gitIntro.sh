#* Local Git Repository
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