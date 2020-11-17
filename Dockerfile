From centos:7
RUN yum -y install sharutils wget 
COPY getVersioning /
COPY lice-kill /
COPY get-values /
RUN chmod 755 getVersioning lice-kill
ENTRYPOINT /get-values $*
