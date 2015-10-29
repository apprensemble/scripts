#!/usr/bin/env bash
groupid=1000
userid=1000
function hex {
	openssl rand -hex 8
}
function gen {
userid=$((userid+1))
/usr/sbin/useradd -u $userid -g $groupid -s /bin/bash -d /home/$user -m $user
passwd=$(hex)
echo $user:$passwd | chpasswd
echo "-- Mdp de $user -> $passwd"
}
/usr/sbin/groupadd -g $groupid apprensemble
for user in steeve jacques laurent patrick abdel eric sebastien stephane herve vincent jeanluc alioune
do
  gen 
done
