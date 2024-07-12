FROM alpine

WORKDIR /app

## copy the main binary
COPY --chmod=777 ./main ./main


RUN apk update && apk add curl iputils-ping


CMD [ "ping", "google.com" ]