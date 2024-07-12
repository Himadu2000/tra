FROM docker.io/debian:bookworm-slim

WORKDIR /app

## copy the main binary
COPY --chmod=777 ./main ./main
RUN ls
RUN ./main
