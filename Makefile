.PHONY: build test dev prod help
.DEFAULT_GOAL: help

default: help

help: ## Output available commands
	@echo "Available commands:"
	@echo
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

test: ## Run the current test suite
	@docker-compose -f docker-compose.test.yml build test
	@docker-compose -f docker-compose.test.yml run --rm test

dev:  ## Run a development environment on port 3000
	@docker-compose build app
	docker-compose up

prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
