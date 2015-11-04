#!/usr/bin/env bash
socket=/tmp/apprensemble
session=apprensemble
while [ ! -z "$*" ]
do
if [ "$1" = "ro" ];then
  ro=-r
  shift
elif [[ "$1" = '--session' ]];then
  session=$2
  shift
  shift
elif [ "$1" = '--socket' ];then
  socket=/tmp/$2
  shift
  shift
fi
done
if [ ! -e $socket ];then
  tmux -S $socket new -s $session
else
  tmux -S $socket attach -t $session $ro || tmux -S $socket new -s $session
fi
exit 0
