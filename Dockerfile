ARG CONTAINER=immortalwrt/sdk
ARG ARCH=mips_24kc
FROM $CONTAINER:$ARCH

LABEL "com.github.actions.name"="ImmortalWrt SDK"

ADD fuse /usr/include/

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
