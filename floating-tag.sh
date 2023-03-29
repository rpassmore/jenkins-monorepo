#!/bin/bash

# Check that a tag name was provided as a command line parameter
if [ -z "$1" ]; then
  echo "Usage: $0 [TAG_NAME]"
  exit 1
fi

TAG_NAME=$1

# Get the hash of the most recent commit on the current branch
COMMIT_HASH=$(git rev-parse HEAD)

# Create the tag at the most recent commit on the current branch
git tag --force --annotate $TAG_NAME $COMMIT_HASH -m "Floating tag created at $(date +"%Y-%m-%d %H:%M:%S")"

# Push the tag to the remote repository
git push --force origin $TAG_NAME

