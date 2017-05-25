FROM mono


MAINTAINER Heerschop

ENV LANG C.UTF-8

ADD host-ping.exe        /usr/local/bin/

#RUN mono /usr/local/bin/host-ping.exe 212.142.3.13 1000 2000 -l /usr/local/bin/host-ping.log

#COPY ./host-ping.exe /usr/local/bin/host-ping.exe

CMD [ "mono", "/usr/local/bin/host-ping.exe 212.142.3.13 1000 2000 -l /usr/local/bin/host-ping.log" ]