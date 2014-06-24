#!/bin/sh
while inotifywait -e modify -e attrib $1; do
	make all
done
