FROM alpine:3.7

RUN set -ex; \
    \
    apk --no-cache add \
        ca-certificates \
        openssl \
        py-pip \
        python ;\
    apk --no-cache add --virtual build-dependencies \
        build-base \
        libffi-dev \
        openssl-dev \
        python-dev ;\
    pip install "ansible>=2.4,<2.5" ;\
    apk del build-dependencies

ENTRYPOINT [ "ansible-playbook" ]

### METADATA ###################################################################

ARG IMAGE
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF
ARG VCS_URL
LABEL \
    org.label-schema.name=$IMAGE \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.version=$VERSION \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url=$VCS_URL \
    org.label-schema.schema-version="1.0"
