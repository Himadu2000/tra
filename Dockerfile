FROM alpine

WORKDIR /app

## copy the main binary
COPY ./main ./main
RUN ls
RUN ./main
