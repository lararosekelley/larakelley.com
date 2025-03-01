FROM golang:1.23.6-alpine3.21 AS base

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o bin/server cmd/server/main.go

FROM alpine:3.21
WORKDIR /app
COPY --from=base /app/bin/server /app/server
EXPOSE ${PORT}
CMD ["/app/server"]
