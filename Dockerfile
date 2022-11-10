# syntax=docker/dockerfile:1.2
FROM alpine:3.15.6 AS build

WORKDIR /mkcert

RUN apk --no-cache add curl
RUN curl -JLO "https://dl.filippo.io/mkcert/v1.4.4?for=linux/amd64" && \
  chmod +x mkcert-v1.4.4-linux-amd64

FROM scratch

COPY --from=build /mkcert/mkcert-v1.4.4-linux-amd64  ./mkcert

CMD ["./mkcert"]
