#!/bin/bash
# Config:
WEB_ROOT=/home/andrew/www/northall.me.uk/www
RUBY_VERSION=3.1.0

echo "Starting northall.me.uk build..."

# Setup environment
set -eu
cd "$(dirname "$0")"
rbenv local $RUBY_VERSION
rbenv rehash

# Update from git
echo "Pulling from git..."
git pull

# Build Jekyll
echo "Building Jekyll..."
echo ""
cd www
eval "$(rbenv init -)"
bundle exec jekyll build

# Remove old files
echo ""
echo "Removing old files from web root..."
rm -r ${WEB_ROOT:?}/*

# Copy Jekyll files
echo "Copying Jekyll generated files to web root..."
cp -r _site/* $WEB_ROOT

echo "northall.me.uk build completed."
