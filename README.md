# Docker Builder MK-livestatus Centos 7

Build image:
```
cd /tmp
git clone 
cd ...
docker build -t builder-mklivestatus:latest .
```

Usage:
```
mkdir /tmp/builder
docker run -it --rm -v `pwd`/out:/out builder-mklivestatus:latest
ls -lha out
total 268K
drwxr-xr-x 2 root    root    4,0K Mai  7 13:07 .
drwxrwxr-x 3 lgcosta lgcosta 4,0K Mai  7 13:06 ..
-rw-r--r-- 1 root    root    258K Mai  7 13:07 mk-livestatus-1.2.8-centos7.tar.gz
```
