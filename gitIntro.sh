# Initialize git
git init

git config --global user.email "root931@hotmail.com"
git config --global user.name "lc"

# You can choose files in the Staging Area that you want to commit
# See what files are in the git Staging Area
git status

# Add files to the Staging Area that you want to track changes
git add gitIntro.sh

# Commit changes
#! Commet in Present tense, you are doing it now
git commit -m "Complete Initial Version"

# See what commit you have made
git log

#* Unique commits are stored in hash: e.g. 37430d63b0560b569eea7f5c70e5e70a2385f871