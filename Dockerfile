FROM centos:centos7

MAINTAINER James Eckersall <james.eckersall@gmail.com>

RUN yum install -y createrepo wget

VOLUME [ "/config", "/repos" ]

ENTRYPOINT [ "/opt/reposync/sync_all.sh" ]
