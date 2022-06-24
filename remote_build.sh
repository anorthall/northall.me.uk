#!/bin/bash

# Config:
REMOTE_SERVER="northall.me.uk"
REMOTE_SCRIPT="/home/andrew/www/northall.me.uk/jekyll/build_site_and_copy.sh"

# Run script
set -eu
ssh -A $REMOTE_SERVER $REMOTE_SCRIPT
