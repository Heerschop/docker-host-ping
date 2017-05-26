FROM mono

MAINTAINER Heerschop

ENV LANG C.UTF-8

ADD host-ping.exe        /usr/local/bin/

[ "$TARGET_HOST" == "" ] && TARGET_HOST="www.google.com"

CMD [ "mono", "/usr/local/bin/host-ping.exe","$TARGET_HOST","1000","4000","-l","/var/log/host-ping/host-ping.log" ]
