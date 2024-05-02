FROM ghcr.io/depau/sapispeechserver

COPY Setup.exe /tmp/Setup.exe
COPY Setup.msi /tmp/Setup.msi
COPY Setup.ini /tmp/Setup.ini
COPY ChsRelease.Cab /tmp/ChsRelease.Cab
COPY JpnRelease.Cab /tmp/JpnRelease.Cab

RUN source auto_xvfb && \
    # InnoSetup
    wine /tmp/Setup.exe /VERYSILENT /SUPPRESSMSGBOXES && \
    # MSI
    wine msiexec /qn /i /tmp/Setup.msi && \
    # Wait for Wine to shut down
    echo "Waiting for all Windows tasks to complete..." && \
    wineserver -w
