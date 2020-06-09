#!/bin/bash
IFS=

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
input=`zenity --text="How can I assist you?" --width=500 --entry`
if [ $input" " = " " ]
then exit 1
fi
IFS=" " read cmd argument <<< $input
if [ $input = "specialis revelio" ]
then
	cmd=$DIR"/modules/specialis revelio.sh"
else
	unset IFS
	cmd=$DIR"/modules/"$cmd".sh \"$argument\""
	fallback=$DIR"/modules/google.sh \"$input\""
fi
$cmd || $fallback
