#!/bin/bash
TIMESTAMP=$(date -u --iso-8601=seconds)

#zola build -o ./docs
git add .
git commit -m"build: $TIMESTAMP"


echo $TIMESTAMP
