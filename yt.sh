#!/bin/bash

if [ -z "$1"]; then
	brave-browser "https://www.youtube.com/playlist?list=WL"
	exit 1
else
	brave-browser "https://youtube.com/results?search_query=$1"
	exit 1
fi
