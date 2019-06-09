"""Firsts steps in Github"""
#Initializating
git init

#Checking the status
git status

#Adding changes
git add octocat.txt

#Checking for changes
git status

#Comitting
git commit -m "Add cute octocat story"

#Adding all changes
git add '*.txt'

#Commiting all changes
git commit -m 'Add all the octocat txt files'

#History
git log

#Pushing remotely
git push -u origin master

#Pulling remotely
git pull origin master

#Differences
git diff HEAD

#Staged Differences
git add octofamily/octodog.txt

#Staged Differences (cont'd)
git diff --staged

#Restting the Stage
git reset octofamily/octodog.txt

#Undo
git checkout -- octocat.txt

#Branching Out
git branch clean_up

#Switching Branches
git checkout clean_up

#Removing All The Things
git rm '*.txt'

#Commiting Branch Changes
git commit -m "Remove all the cats"

#Switching Back to master
git checkout master

#Preparing to Merge
git merge clean_up

#Keeping Things Clean
git branch -d clean_up

#The final push
git push

#Pull
git pull

#Define branch and pull
git branch --set-upstream-to=origin/master master

#Pulls
git pull