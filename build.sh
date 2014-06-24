#!/bin/sh
while inotifywait -e modify -e attrib Report.tex Presentation.tex; do
	make all
done
