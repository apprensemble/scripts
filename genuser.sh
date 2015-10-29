#!/usr/bin/env ksh
groupid=1000
userid=1000
function gen {
userid=$((userid+1))
/usr/sbin/useradd -u $userid -g $groupid -s /bin/bash -d /home/$user -m $user
$user:Tempo123 | chpasswd
}
/usr/sbin/groupadd -g $groupid apprensemble
for user in steeve jacques laurent patrick abdel eric sebastien stephane herve vincent jeanluc alioune
do
  gen 
done
