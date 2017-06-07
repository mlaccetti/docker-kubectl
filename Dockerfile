FROM alpine:3.6

ARG KUBECTL_VERSION

ENV HOME=/config

RUN set -x && \
    apk add --no-cache curl ca-certificates bash && \
    curl -LS https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl -o /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl && \
    \
    # Basic check it works.
    kubectl version --client

ADD docker-entrypoint.sh /usr/bin/docker-entrypoint.sh

RUN chmod +x /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
