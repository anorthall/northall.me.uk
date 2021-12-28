#!/bin/bash

cd www
bundle exec jekyll build
rm -rfv /home/andrew/www/northall.me.uk/www/*
cp -rfv _site/* /home/andrew/www/northall.me.uk/www/

