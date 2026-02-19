FROM golang:1.21-alpine

WORKDIR /app
COPY . .

RUN go build -o gophish

EXPOSE 8080

CMD ["./gophish"]
