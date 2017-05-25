FROM mono

ADD host-ping.exe        /usr/local/bin/

RUN mono /usr/local/bin/host-ping.exe 212.142.3.13 1000 2000 -l /usr/local/bin/host-ping.log
