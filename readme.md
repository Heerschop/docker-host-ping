# Host ping

Simple link status logger, can be used to test your ISP up time. Status drop is increased when the link is down for a short time, specified by the **STATUS_THRESHOLD** argument


#### Example log output `/var/log/host-ping/host-ping.log`
```
Status,     Duration , Begin               , End                 , Drops
Up    ,   0.00:27:13 , 2017-05-25 08:54:34 , 2017-05-25 09:21:48 , 0
Down  ,   0.00:00:02 , 2017-05-25 09:21:48 , 2017-05-25 09:21:50 , 0
Up    ,   0.02:49:31 , 2017-05-25 09:21:50 , 2017-05-25 12:11:21 , 1
Down  ,   0.00:00:02 , 2017-05-25 12:11:21 , 2017-05-25 12:11:23 , 0
Up    ,   0.01:03:05 , 2017-05-25 12:11:23 , 2017-05-25 13:14:28 , 0
```

#### Example watch log file
```
watch -n 1 tail -n 10 /opt/host-ping/logs/host-ping.log
```

#### Docker run command
Typical choice for the **TARGET_HOST** is your ISP gateway address.
```
docker run --detach                                        \
           --name host-ping                                \
           --restart always                                \
           --volume /opt/host-ping/logs:/var/log/host-ping \
           --env TARGET_HOST='www.google.com'              \
           --env TZ=Europe/Amsterdam                       \
           heerschop/docker-host-ping
```
