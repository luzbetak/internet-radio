My Internet Radio for Raspberry Pi
==================================

### Install - Linux Music Player Daemon
```
#-- System Update/Update --#
$ apt-get update
$ apt-get update

#-- Install Daemon and Player --#
$ apt-get install mpd
$ apt-get install mpc

#-- Service Stop/Start --#
$ service mpd stop
$ service mpd start

#-- Disable/Enable Service --#
$ update-rc.d mpd disable
$ update-rc.d mpd enable

#-- Start Player --#
$ mpd
$ mpc play
$ mpc pause

#-- Add all music to a directory --#
$ mpc update
```

### SwapFile
* http://manpages.ubuntu.com/manpages/bionic/man8/dphys-swapfile.8.html

```
$ dphys-swapfile uninstall
$ free -h
$ vi /etc/dphys-swapfile
    CONF_SWAPSIZE=1024
$ dphys-swapfile setup
$ dphys-swapfile swapon
$ free -h 
```


### Screenshot
![Internet Radio](https://github.com/kevinduraj/internet-radio/blob/master/internet-radio.png)

### Radio Index
* http://www.radio-index.com
* http://web-radio-importer.googlecode.com/svn/trunk/Radio%20Stations/WebRadio/Slovakia.xml
* http://www.internet-radio.com/stations/techno/page2

### References
[http://crunchbang.org/forums/viewtopic.php?pid=182574](http://crunchbang.org/forums/viewtopic.php?pid=182574)
