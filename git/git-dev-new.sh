#!/usr/bin/env bash

#################################################
# Create a new dev branch that is sync with the
# main repo's master branch.
#################################################

git checkout master
git pull --rebase main master
git push origin master
git checkout -b dev
git push origin dev
git branch -u origin/dev
