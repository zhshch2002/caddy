FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare \
    github.com/greenpau/caddy-auth

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
