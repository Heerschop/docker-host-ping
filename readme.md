# Host ping

Simple link status logger, can bu used to test your ISP up time. Status drop is increased when the link is down for a short time specified by the **STATUS_THRESHOLD** argument


## Example log output `/var/log/host-ping/host-ping.log`
```
Status   ,     Duration , Begin                , End                  , StatusDrops
Host   Up,   0.00:27:13 , 2017-05-25 08:54:34Z , 2017-05-25 09:21:48Z , 0
Host Down,   0.00:00:02 , 2017-05-25 09:21:48Z , 2017-05-25 09:21:50Z , 0
Host   Up,   0.02:49:31 , 2017-05-25 09:21:50Z , 2017-05-25 12:11:21Z , 1
Host Down,   0.00:00:02 , 2017-05-25 12:11:21Z , 2017-05-25 12:11:23Z , 0
Host   Up,   0.01:03:05 , 2017-05-25 12:11:23Z , 2017-05-25 13:14:28Z , 0
```

## Docker run command
Logical choice for the **TARGET_HOST** is your ISP gateway.
```
docker run --volume /opt/host-ping/logs:/var/log/host-ping --env TARGET_HOST='www.google.com' heerschop/docker-host-ping
```
