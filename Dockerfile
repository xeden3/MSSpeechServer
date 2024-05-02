FROM scottyhardy/docker-wine:stable-8.0.2

###############################################
MAINTAINER James Chan <james@sctmes.com>

EXPOSE 8080

ENV WINEARCH=win32 \
    WINEPREFIX=/wine32 \
    XVFB_SCREEN=0 \
    XVFB_RESOLUTION="320x240x8" \
    DISPLAY=":95" \
    DEBIAN_FRONTEND=noninteractive

WORKDIR /wine32

RUN apt-get update && \
    apt-get install -y xvfb x11-utils && \
    mkdir /tmp/.X11-unix && \
    chmod 1777 /tmp/.X11-unix && \
    dpkg --add-architecture i386 && \
    apt-get update 
    
COPY bash/auto_xvfb.sh /usr/bin/auto_xvfb

RUN mv /bin/sh /bin/sh.old && \
    ln -s /bin/bash /bin/sh && \
    bash /usr/bin/auto_xvfb && \
    winetricks unattended win8 nocrashdialog msxml3 dotnet46 


COPY libs/ /wine32/drive_c/libs
COPY bin/ /wine32/drive_c/bin
COPY bash/run_install.sh /wine32/drive_c/bash
COPY bash/docker_entrypoint.sh /usr/bin/entrypoint

RUN cp /wine32/drive_c/libs/tini/tini /tini && \
    chmod +x /tini && \
    chmod +x /usr/bin/entrypoint

ENTRYPOINT ["/tini", "--", "/usr/bin/entrypoint"]
CMD ["--urls", "http://0.0.0.0:8080"]
