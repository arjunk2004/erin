#!/bin/bash
IFS=
arg=""
temp=${arg#?}
cmd=${temp::-2}
echo $cmd" test"
if [ $cmd" " = " " ]
then
	unset IFS
	gnome-terminal
else
	unset IFS
	gnome-terminal -- "bash -c '$cmd; $SHELL'"
fi
