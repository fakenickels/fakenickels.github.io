#!/bin/sh

echo "\033[1;33m What have you done to my site?"

read update

# Clean up previous build
rm -rf ./www/**/*
# Create new build
harp compile

git checkout master
git add --all
git commit -m "$update"
echo "\033[1;31mPushing new site to GitHub repo\n\033[0m"
git push --force
git checkout develop
