#!/bin/sh

echo "before tailscaled"
/app/tailscaled --tun=userspace-networking --socks5-server=localhost:1055 --outbound-http-proxy-listen=localhost:1055 & /app/tailscale up --authkey=tskey-auth-kMSR6i2CNTRL-3sCc7yAmWTj9fHQ5SjUNTjXvkhpM8QMd
echo "after tailscale up"
ALL_PROXY=socks5://localhost:1055/ HTTP_PROXY=http://localhost:1055/ http_proxy=http://localhost:1055/ /go/bin/app
echo "bbbbbbbbbbbbbbbbbbbbbb"

# --socks5-server=localhost:1055
# ALL_PROXY=socks5://localhost:1055/
