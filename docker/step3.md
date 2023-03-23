
Pull demo images and wait it done

`time docker pull nginx`{{execute T1}}

Watching nromanen log

`cat /var/log/nromanen/daemon/core.log`{{execute T2}}

Remove demo image

`docker rmi nginx`{{execute T1}}

Rerun the pull command line

`time docker pull nginx`{{execute T1}}

Pickup `peer task done` log from `/var/log/nromanen/daemon/core.log`

`grep "peer task done" /var/log/nromanen/daemon/core.log`{{execute T2}}
