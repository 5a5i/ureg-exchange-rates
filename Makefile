setup:
	@make build
	@make up
	@make composer-update
build:
	@make be-build
	@make fe-build
stop:
	@make be-stop
	@make fe-stop
up:
	@make be-up
	@make fe-up
be-build:
	docker compose -f ./backend/docker-compose.yml build --no-cache --force-rm
fe-build:
	docker compose -f ./frontend/docker-compose.yml build --no-cache --force-rm
be-stop:
	docker compose -f ./backend/docker-compose.yml stop
fe-stop:
	docker compose -f ./frontend/docker-compose.yml stop
be-up:
	docker compose -f ./backend/docker-compose.yml up -d
fe-up:
	docker compose -f ./frontend/docker-compose.yml up -d
composer-update:
	docker exec app bash -c "composer update"
npm-start:
	docker exec web bash -c "npm install"
	docker exec web bash -c "npm start"
data:
	docker exec app bash -c "php artisan migrate"
	docker exec app bash -c "php artisan db:seed"