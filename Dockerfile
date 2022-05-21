From centos:7
RUN yum -y install sharutils wget bzip2 file
COPY getVersioning /
COPY lice-kill /
COPY get-values /
RUN chmod 755 getVersioning lice-kill
ENTRYPOINT /bin/bash -x /get-values $*
