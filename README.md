# gammu-smsd-docker
a minimalistic gammu-smsd docker to send sms or receive sms as text files.
I created this, because other solutions included web-UIs and databases. This is simpler.



you have to mount the USB-Surfstick (mostly /dev/ttyUSB0)
```
--device=/dev/ttyUSB0:/dev/ttyUSB0
```
you have to mount the output folders for the SMS incoming and outgoing 
```
--volume /mnt/user/appdata/gammu/spool/:/var/spool/
```

you have to mount the configs, this depends on your setup and version, you can simply mount to both locations if you are not sure
```
--volume /mnt/user/appdata/gammu/config/.gammurc:/root/.gammurc
--volume /mnt/user/appdata/gammu/config/.gammurc:/etc/gammu-smsdrc
```
example docker run command:
```
docker run -d --rm --name gammu --device=/dev/ttyUSB0:/dev/ttyUSB0 -v /mnt/user/appdata/gammu/config/.gammurc:/root/.gammurc -v /mnt/user/appdata/gammu/config/.gammurc:/etc/gammu-smsdrc --volume /mnt/user/appdata/gammu/spool/:/var/spool/ gammu
```
