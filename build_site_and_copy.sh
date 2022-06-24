#!/bin/bash
# Config:
WEB_ROOT=/home/andrew/www/northall.me.uk/www

# Update from git
#git pull

# Build simple-photo-gallery
cd gallery
source ./venv/bin/activate
gallery-build
deactivate
cd ..
cp -v gallery/public/index.html www/photos.html

# Build Jekyll
cd www
bundle exec jekyll build

# Remove old files
rm -rfv $WEB_ROOT/*

# Copy Jekyll files
cp -rfv _site/* $WEB_ROOT

# Copy gallery images
cp -rfv ../gallery/public/images $WEB_ROOT/images/gallery

