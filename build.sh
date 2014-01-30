#!/bin/sh
while inotifywait -e modify Report.tex; do
	make all
done
