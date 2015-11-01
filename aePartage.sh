#!/usr/bin/env bash
if [ "$1" = "ro" ];then
  ro=-r
fi
socket=/tmp/apprensemble
session=apprensemble
if [ ! -e $socket ];then
  tmux -S $socket new -s $session
else
  tmux -S $socket attach -t $session $ro || tmux -S $socket new -s $session
fi
exit 0
