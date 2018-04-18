build:
	docker image build -t dataset:latest .

run: build
	docker container run -p 8080:8080 --rm -it dataset:latest sh