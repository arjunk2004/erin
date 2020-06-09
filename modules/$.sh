#!/bin/bash
IFS=
arg=""
for word in $*; do arg=$arg$word" "; echo $word; done
temp=${arg#?}
cmd=${temp::-2}
echo $cmd" test"
if [ $cmd" " = " " ]
then
	unset IFS
	gnome-terminal
else
	unset IFS
	gnome-terminal --command="bash -c '$cmd; $SHELL'"
fi
