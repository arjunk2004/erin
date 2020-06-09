#!/bin/bash
IFS=
arg=""
for word in $*; do arg=$arg$word" "; echo $word; done
temp=${arg#?}
cmdarg=${temp::-2}
url=${cmdarg// /"%20"}
unset IFS
cmd="google-chrome $url"
$cmd

