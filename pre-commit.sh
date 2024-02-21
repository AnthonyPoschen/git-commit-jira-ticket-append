#!/bin/sh

msg=$(cat $1)
branch=$(git rev-parse --abbrev-ref HEAD)
ticket=$(echo "$branch" | grep -oE '[A-Z]+-[0-9]+')
msgTicket=$(echo "$msg" | grep -oE '[A-Z]+-[0-9]+')

if [ -n "$msgticket" ]; then
	# jira ticket in commit message already just end and accept
	exit 0
fi

# check if nothing was matched
if [ -z "$ticket" ]; then
	echo "no jira ticket found in branch name."
	exit 1
fi
msg=$(echo "$msg" | sed "1s/$/ $ticket/")
echo $msg >$1
