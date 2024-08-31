.PHONY: up build down shell test

up:
	@echo "Starting containers..."
	@docker-compose up -d

build:
	@echo "Building containers..."
	@docker-compose up --build

down:
	@echo "Stopping containers..."
	@docker-compose down

shell:
	@echo "Connecting to backend container..."
	@docker exec -it yii2_backend sh -c 'exec bash'

test:
	@echo "Running unit tests..."
	@./vendor/bin/codecept run
