FROM alpine

WORKDIR /app

## copy the main binary
COPY --from=build /build/main ./

RUN apk update && apt add curl -y

EXPOSE 8000

# HEALTHCHECK --interval=10s --start-period=20s CMD [ "curl", "-f", "http://localhost:8080/graphql", "||", "exit", "1" ]

CMD ./main
