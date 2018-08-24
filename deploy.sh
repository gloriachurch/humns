#!/bin/bash
if [ "$@" ]; then
	commit_message="$@"
else
	commit_message="content update"
fi
mkdocs build &&
git add * &&
git commit -m "$commit_message" &&
git push origin master
