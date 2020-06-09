#!/bin/bash
temp="${1%\"}"
cmdarg="${temp#\"}"
browser=`xdg-settings get default-web-browser`
IFS='.' read -ra splits <<< "$browser"
unset IFS
command="${splits[0]} $cmdarg"
$command

