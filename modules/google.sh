#!/bin/bash
IFS=
arg=""
for word in $*; do arg=$arg$word" "; echo $word; done
temp=${arg#?}
cmdarg=${temp::-2}
search=${cmdarg// /"%20"}
browser=`xdg-settings get default-web-browser`
url="https://www.google.com/search?q=$search"
IFS='.' read -ra splits <<< "$browser"
unset IFS
cmd="${splits[0]} $url"
$cmd
