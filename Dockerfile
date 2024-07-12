FROM alpine

## cargo package name: customize here or provide via --build-arg
ARG pkg=tra

WORKDIR /app

## copy the main binary
COPY target/release/$pkg ./

RUN apk update && apk add curl -y

EXPOSE 8000

# HEALTHCHECK --interval=10s --start-period=20s CMD [ "curl", "-f", "http://localhost:8080/graphql", "||", "exit", "1" ]

CMD ./main
