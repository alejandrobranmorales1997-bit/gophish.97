FROM golang:1.19-alpine AS builder

RUN apk add --no-cache git build-base

WORKDIR /app
COPY . .

RUN go mod tidy
RUN go build -o gophish

EXPOSE 8080

CMD ["./gophish", "-config", "config.json"]
