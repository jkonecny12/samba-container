FROM registry.fedoraproject.org/fedora:40
LABEL maintainer=DragonLich@pacse.eu

RUN set -ex; \
  dnf update -y; \
  dnf install -y samba; \
  dnf clean all

EXPOSE 137/udp 138/udp 139/tcp 445/tcp

RUN systemctl enable smb nmb

CMD [ "/sbin/init" ]
