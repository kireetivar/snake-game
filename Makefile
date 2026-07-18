BINARY_NAME ?= snakegame

# Windows make often has no Unix rm; pick a remove that works on this OS.
ifeq ($(OS),Windows_NT)
	RMDIR = if exist bin rmdir /s /q bin
else
	RMDIR = rm -rf bin
endif

all: build

build:
	go build -o bin/${BINARY_NAME}.exe ./cmd/${BINARY_NAME}

run:
	go run ./cmd/${BINARY_NAME}

test:
	go test ./...

clean:
	$(RMDIR)
	go clean
