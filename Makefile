build-image:
	docker-compose build --force-rm

build-docs: build-image
	docker-compose run wiki build

run:
	docker-compose up -d --force-recreate

down:
	docker-compose down --remove-orphans
