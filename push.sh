#!/bin/bash

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
NOW=$(date +"%Y-%m-%d_%H:%M:%S")

git fetch origin
git reset origin/$CURRENT_BRANCH --hard

touch pushlog.txt

echo $NOW > pushlog.txt

git add pushlog.txt
git commit -m "Adding automated log to trigger push event"
git push origin $CURRENT_BRANCH
