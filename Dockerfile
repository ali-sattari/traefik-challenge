FROM traefik/jobs AS origin
FROM debian:stable-slim

COPY --from=origin /start /traefik-start
