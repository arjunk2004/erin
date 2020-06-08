#!/bin/bash
IFS=

failure() {
        zenity --text="Your command failed" --error
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
input=`zenity --text="How can I assist you?" --entry`
if [ $input" " = " " ]
then exit 1
fi
IFS=" " read command argument <<< $input
unset IFS
command=$DIR"/modules/"$command".sh \""$argument"\""
echo $command
$command
