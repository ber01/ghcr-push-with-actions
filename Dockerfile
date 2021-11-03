FROM ubuntu:latest

LABEL org.opencontainers.image.source https://github.com/ber01/ghcr-push-with-actions

COPY ./dist/server ./

CMD ["./server" ]
