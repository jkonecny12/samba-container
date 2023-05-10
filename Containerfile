FROM registry.fedoraproject.org/fedora:38
LABEL maintainer=DragonLich@psmail.xyz

RUN set -ex; \
  dnf update -y; \
  dnf install -y samba; \
  dnf clean all

EXPOSE 137/udp 138/udp 139/tcp 445/tcp

RUN systemctl enable smb nmb

CMD [ "/sbin/init" ]
