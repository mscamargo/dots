#!/bin/sh

files=$(find . -type f ! -path "./.git/*" ! -name install.sh ! -name README.md)

for file in $files; do
	ln -rvfs $file $HOME/$file
done;
