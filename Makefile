build:
	docker image build -t dataset:latest .

run: build
	docker container run -d -p 80:80 --rm -it dataset:latest

debug: build
	docker container run --rm -it dataset:latest sh