# Wrapper around various tools to create a unified CLI for the project

# Database migrations
# -------------------

migrate-up:
	@echo "Running all pending database migrations..."
	@goose up

migrate-down:
	@echo "Rolling back the last database migration..."
	@goose down

migrate-status:
	@echo "Checking the status of database migrations..."
	@goose status

# Local development
# -----------------

watch:
	@echo "Starting the live-reloading development server..."
	@air

# Builds
# ------

build:
	@echo "Building the project..."
	@go build -o bin/server cmd/server/main.go

clean:
	@echo "Cleaning up build folder..."
	@rm -rf bin

run:
	@echo "Running the project..."
	@go run cmd/server/main.go

.PHONY: migrate-up migrate-down migrate-status watch build clean run
