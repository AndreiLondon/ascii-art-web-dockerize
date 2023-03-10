
# syntax=docker/dockerfile:1

FROM golang:1.16-alpine
LABEL key="value"

WORKDIR /app

COPY go.mod ./
# COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /docker-askii-art-web

EXPOSE 8080

CMD [ "/docker-ascii-art-web" ]

