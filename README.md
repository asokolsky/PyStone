This is a docker image of a PyStone 1.1 benchmark.

## Credits
PyStone 1.1 benchmark:
https://github.com/blackberry/Python/blob/master/Python-3/Lib/test/pystone.py

Docker image versioning:
https://medium.com/travis-on-docker/how-to-version-your-docker-images-1d5c577ebf54


## Changes to pystone.py
time.clock deprecated in Python 3.3
I replaced it with time.process_time


## Build docker image
./build.sh
or
docker build -t pystone:v0.1 .


## Run docker image
docker run -it --rm --name pystone pystone

## Release
./build.sh
