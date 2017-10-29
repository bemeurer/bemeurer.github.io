#! /usr/bin/env bash

git checkout source
bundle exec jekyll build
git checkout master 
rsync -av ./_site/* ./
git add *
git commit && git push
git checkout source
