FROM ubuntu:xenial-20170410

ARG http_proxy
ARG https_proxy
RUN apt-get update \
 && apt-get install -yq --no-install-recommends nginx-extras gosu \
 && rm -rf /var/lib/apt/lists/*

RUN ln -sf /dev/stderr /var/log/nginx/error.log
RUN chmod go+rwX -R /var /run
VOLUME /media

COPY entrypoint.sh /
COPY nginx.conf /etc/nginx/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
