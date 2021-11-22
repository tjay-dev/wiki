build-image:
	docker-compose build --force-rm

build-docs: build-image
	docker-compose run --rm wiki 'mkdocs build'

run: build-docs
	docker-compose up --force-recreate

down:
	docker-compose down --remove-orphans

check-version: build-image
	docker-compose run --rm wiki 'pip index versions $(package)'
