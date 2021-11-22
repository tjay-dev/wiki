build-image:
	docker-compose build

build-docs: build-image
	docker-compose run wiki build

run:
	docker-compose up -d --force-recreate
