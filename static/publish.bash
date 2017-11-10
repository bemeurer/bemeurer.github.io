#! /usr/bin/env bash

git checkout source
JEKYLL_ENV=production bundle exec jekyll build
git checkout master 
rsync -av ./_site/* ./
git add *
git commit || true
git push || true
git checkout source
