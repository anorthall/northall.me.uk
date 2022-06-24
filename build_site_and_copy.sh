#!/bin/bash
# Config:
WEB_ROOT=/home/andrew/www/northall.me.uk/www

# Update from git
#echo "Pulling from git..."
#git pull

# Build simple-photo-gallery
echo "Building photo gallery..."

cd gallery
source ./venv/bin/activate
gallery-build
deactivate
cd ..

echo "Copying photo gallery to Jekyll..."
cp gallery/public/index.html www/photos.html

# Build Jekyll
echo "Building Jekyll..."
cd www
bundle exec jekyll build

# Remove old files
echo "Removing old files from web root..."
rm -r $WEB_ROOT/*

# Copy Jekyll files
echo "Copying Jekyll generated files to web root..."
cp -r _site/* $WEB_ROOT

# Copy gallery images
echo "Copying photo gallery images to web root..."
cp -r ../gallery/public/images $WEB_ROOT/images/gallery

