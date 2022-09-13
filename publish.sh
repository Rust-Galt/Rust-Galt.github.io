#!/bin/bash
TIMESTAMP=$(date -u --iso-8601=seconds)

zola build -o ./docs
../0.10.0-linux-x86_64 --keep-closing-tags --keep-html-and-head-opening-tags --keep-spaces-between-attributes --ensure-spec-compliant-unquoted-attribute-values --do-not-minify-doctype ./docs/*.html
../0.10.0-linux-x86_64 --keep-closing-tags --keep-html-and-head-opening-tags --keep-spaces-between-attributes --ensure-spec-compliant-unquoted-attribute-values --do-not-minify-doctype ./docs/**/*.html
../0.10.0-linux-x86_64 --keep-closing-tags --keep-html-and-head-opening-tags --keep-spaces-between-attributes --ensure-spec-compliant-unquoted-attribute-values --do-not-minify-doctype ./docs/**/**/*.html

git add .
git commit -m"Publish minifyed Zola build: $TIMESTAMP"
git push
