FROM alpine

WORKDIR /app

## copy the main binary
COPY --chmod=777 ./main ./main
RUN ls
RUN ./main
