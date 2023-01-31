FROM alpine:latest

RUN apk --no-cache add \
        make gcc g++ zlib-dev \
        wget tar

COPY ./ ./

RUN make all

ENTRYPOINT ["/ab"]