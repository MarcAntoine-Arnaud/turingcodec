FROM alpine:3.5

ADD . /src
WORKDIR /src

RUN runtime_deps='libstdc++' \
    && apk add --virtual .build-dependencies --no-cache cmake build-base \
    && mkdir build_docker \
    && cd build_docker \
    && cmake .. \
    && make \
    && make install \
    && rm -Rf build_docker \
    && apk del .build-dependencies \
    && apk add --no-cache $runtime_deps

