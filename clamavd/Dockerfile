FROM alpine:3.12.1

LABEL maintainer="Kelly Salazar <developmentcreativo@gmail.com>"

RUN apk --no-cache add clamav-daemon freshclam clamav-libunrar supervisor

RUN sed -i 's/^Foreground .*$/Foreground true/g' /etc/clamav/clamd.conf && \
    echo 'TCPSocket 3310' >> /etc/clamav/clamd.conf && \
    sed -i 's/^Foreground .*$/Foreground true/g' /etc/clamav/freshclam.conf


RUN freshclam

RUN mkdir /run/clamav && chown clamav:clamav /run/clamav
COPY etc /etc/

EXPOSE 3311 3310



CMD ["supervisord", "-c", "/etc/supervisord.conf"]