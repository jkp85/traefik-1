.PHONY: help
# Docker image name and tag. Build assumes ACCOUNT is set
# as an env var before running any commands.
OWNER?=$(ACCOUNT)
IMAGE?=$(DOCKER_IMAGE)
NAMESPACE:=$(OWNER)/$(DOCKER_IMAGE)
TAG?=latest
SHELL:=bash

ALL_STACKS:=traefik

ALL_IMAGES:=$(ALL_STACKS)

help:
# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@echo "==========================="
	@echo "IllumiDesk Traefik images"
	@echo "==========================="
	@echo ""
	@echo "Replace '%' with an image directory name. The build command will add "
	@echo "the owner name and a tag to the image name (e.g. 'make build/traefik'"
	@echo "will create make 'acmeinc/traefik:latest')."
	@echo
	@grep -E '^[a-zA-Z0-9_%/-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build/%: DARGS?=
build/%: ## Build and tag a stack
	docker build $(DARGS) --rm --force-rm -t $(OWNER)/$(notdir $@):$(TAG) ./$(notdir $@)

build-all: $(foreach I,$(ALL_IMAGES), build/$(I) ) ## Build all stacks

push/%: ## Push an image to the registry
	docker push $(OWNER)/$(notdir $@):$(TAG)

push-all: $(foreach I,$(ALL_IMAGES), push/$(I) ) ## Push all stacks