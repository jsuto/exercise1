FROM alpine:3.17.0 AS builder

# hadolint ignore=DL3003,DL3018
RUN apk add --no-cache gcc g++ make pcre2-dev curl && \
    curl -o nginx-1.22.1.tar.gz http://nginx.org/download/nginx-1.22.1.tar.gz && \
    tar zxf nginx-1.22.1.tar.gz && \
    cd nginx-1.22.1 && \
    ./configure --prefix=/usr --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --pid-path=/var/run/nginx/nginx.pid --modules-path=/usr/libexec/nginx && \
    make install DESTDIR=/tmp/aaa


FROM alpine:3.17.0

# hadolint ignore=DL3018
RUN apk --no-cache add pcre2

COPY --from=builder /tmp/aaa /

CMD ["nginx", "-g", "daemon off;"]
