# mkcert-docker

> A fast and simple way to generate CA and SSL certificates for your local dev environment

### How to run

__Create CA and PEM certificate__

```
docker run -v $PWD:/root/.local/share/mkcert brunopadz/mkcert-docker:latest \
/bin/sh -c "mkcert -install && \
mkcert -cert-file /root/.local/share/mkcert/mkcert.pem \
-key-file /root/.local/share/mkcert/mkcert.key localhost.dev"
```

### Why?

Well, because it's faster running a docker container than installing via and running using your package manager.
