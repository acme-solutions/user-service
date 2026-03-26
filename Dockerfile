FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY . .
RUN go build -o /server ./cmd/

FROM alpine:3.19
COPY --from=builder /server /server
EXPOSE 8080
CMD ["/server"]
