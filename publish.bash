#! /usr/bin/env bash

git checkout source
hugo
rsync -av ./public/* ./
git add *
git commit || true
git push || true
git checkout source