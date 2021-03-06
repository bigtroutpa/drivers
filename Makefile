.PHONY: test
test:
	go test -coverprofile=coverage.txt -race ./...

.PHONY:build
build:
	go build ./...


.PHONY: go-get
go-get:
	go get -u ./...

.PHONY: imports
imports:
	goimports -w -local "github.com/reef-pi" ./

.PHONY: fmt
fmt:
	gofmt -w -s ./
