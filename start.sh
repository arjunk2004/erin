#!/bin/bash
IFS=

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
input=`zenity --text="How can I assist you?" --entry`
if [ $input" " = " " ]
then exit 1
fi
IFS=" " read cmd argument <<< $input
unset IFS
cmd=$DIR"/modules/"$cmd".sh \"$argument\""
fallback=$DIR"/modules/google.sh \"$input\""
echo $cmd
$cmd || $fallback
