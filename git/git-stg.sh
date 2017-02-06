#!/usr/bin/env bash

#################################################
# This script is used for releasing to the
# staging repo. It is recommended to directly
# clone the main repo into its own folder
# <repo>-staging. This local clone is devoted for
# releasing and does not contain the forked
# remote (that is called origin).
#################################################

# Update the master branch
git checkout master
git pull --rebase main master
# Update the staging branch
git checkout staging
git pull --rebase main staging
git merge --ff-only master
git push main staging
