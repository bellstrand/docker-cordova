build:
	docker build -t bellstrand/docker-cordova .

run:
	docker run -it --rm --privileged -v $PWD:/app bellstrand/docker-cordova cordova	