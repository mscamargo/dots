#!/bin/sh

files=$(find . -type f ! -path "./.git/*" ! -name install.sh ! -name README.md)

for file in $files; do
	filename=$(echo $file | sed 's/\.\///g')
	if [[ "$(dirname $filename)" == *\/* ]]; then
		dir=$(dirname $filename)
		mkdir -pv $HOME/$dir
	fi
	link=$PWD/$filename
	target=$HOME/$filename
	ln -vfs $link $target
done;
