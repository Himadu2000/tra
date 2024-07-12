FROM docker.io/debian:bookworm-slim

WORKDIR /app

## copy the main binary
COPY ./main ./main

RUN apt update && apt install curl -y

EXPOSE 8000

CMD ./main
