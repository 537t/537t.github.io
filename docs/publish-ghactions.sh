#!/bin/bash
# Build the jekyll site
bundle exec jekyll build
# Make an output folder
mkdir ../output
# Copy the output folder back one directory
cp -r _site/* ../output/
# checkout the gh-pages branch
git checkout gh-pages
# discard all untracked changes and unstaged changes
git clean -fd