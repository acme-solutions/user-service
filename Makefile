.PHONY: build test lint run

build:
	go build -o bin/server ./cmd/

test:
	go test ./... -v -cover

lint:
	golangci-lint run

run:
	go run ./cmd/
