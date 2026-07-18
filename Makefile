BINARY_NAME ?= myapp

all: build

build:
	go build -o bin/${BINARY_NAME} ./cmd/${BINARY_NAME}

run:
	go run ./cmd/${BINARY_NAME}

test:
	go test ./...

clean:
	rm -rf bin/
	go clean