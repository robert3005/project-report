#!/bin/sh
while inotifywait -e modify -e attrib Report.tex; do
	make all
done
