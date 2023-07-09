IMAGE=heimdall-rs:0.4.7

build:
	docker build -t $(IMAGE) .

run:
	docker run -it --rm --name heimdall $(IMAGE)

