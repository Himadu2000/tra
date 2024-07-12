FROM docker.io/debian:bookworm-slim

WORKDIR /app

## copy the main binary
COPY ./main ./main

RUN "curl -f https://google.com || exit 1"
RUN ./main
