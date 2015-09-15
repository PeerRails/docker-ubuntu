all: build

build:
	@docker build --tag=${USER}/ubuntu:latest .

base:
	@docker pull ubuntu:15.04

rebuild: base
	@docker build --tag=${USER}/ubuntu:latest .

release: rebuild
	@docker build --tag=${USER}/ubuntu:$(shell cat VERSION) .
