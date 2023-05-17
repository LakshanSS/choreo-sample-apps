#!/bin/sh

echo "aaaaaaaaaaaaaaaaaaaaa"
/app/tailscaled --tun=userspace-networking --socks5-server=localhost:1055 --outbound-http-proxy-listen=localhost:1055 & /app/tailscale up --authkey=tskey-auth-kQoi1j5CNTRL-sKh5MeZdMQYPgL8afzLDQYmC2tSUBBzwf
echo Tailscale started
ALL_PROXY=socks5://localhost:1055/ HTTP_PROXY=http://localhost:1055/ http_proxy=http://localhost:1055/ /go/bin/app
echo "bbbbbbbbbbbbbbbbbbbbbb"

