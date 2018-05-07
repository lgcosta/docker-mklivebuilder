FROM centos:7

RUN yum group install -y "Development Tools" \
  && yum install -y wget glibc-static libstdc++-static

CMD mkdir /builder \
  && wget http://www.mathias-kettner.de/download/mk-livestatus-1.2.8.tar.gz \
  && tar zxpf mk-livestatus-1.2.8.tar.gz \
  && cd mk-livestatus-1.2.8 \
  && ./configure --prefix=/builder/out \
  && make \
  && make install \
  && cd /builder/out \
  && tar czpf /out/mk-livestatus-1.2.8-centos7.tar.gz .

