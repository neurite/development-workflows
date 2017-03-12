#!/usr/bin/env bash

#################################################
# Clean up the dev branch both locally and
# remotely.
#################################################

git checkout master
git pull --rebase main master
git push origin master
git branch -D dev
git push origin :dev
