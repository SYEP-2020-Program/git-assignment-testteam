# Author: Daniel Segarra
# Course: Intro to Web Development
# Assignment: Git Basics

git config --global user.name "Daniel Segarra"
git config --global user.email danielsegarra36@gmail.com

mkdir test
cd test/

# in teams of three download the repo
# what repo would have done in a file
git init
echo "line 1" > conflict.txt
git add .
git commit -m "line 1"
echo "line 2" >> conflict.txt
git commit -am "add line 2"

# have everyone make their own branches
git checkout -b morelines

# make corrections to your designated section
echo "line 3" >> conflict.txt
git commit -am "add line 3"

# commit & push these changes
# git push origin morelines

# make a Pull Request on GitHub

# PR launchs a commit on master through GitHub actions
git checkout master
echo "line 4" >> conflict.txt
git commit -am "add line 4"

# this should generate a merge conflict
git merge morelines

# Fix Conflict

# Add 
git add .
git commit 


# https://dev.to/cookrdan/conflict-resolution-git-merge-practice-3iab


# Clean Up
cd ..
git rm -r test