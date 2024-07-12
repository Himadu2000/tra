FROM alpine

WORKDIR /app

## copy the main binary
COPY target/main ./main

RUN apk update && apk add curl

EXPOSE 8000

# HEALTHCHECK --interval=10s --start-period=20s CMD [ "curl", "-f", "http://localhost:8080/graphql", "||", "exit", "1" ]

RUN ls

RUN main
CMD main
