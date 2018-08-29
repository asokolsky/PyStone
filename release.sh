#
# Release script:
#  - bump the version, 
#  - run build script, 
#  - set git tags
#  - push tags to GitHub, 
#  - build the image, 
#  - and push the image to Docker Hub. 
#
set -ex

# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=asokolsky
# image name
IMAGE=pystone

# ensure we're up to date
git pull

# bump version
# docker run --rm -v "$PWD":/app treeder/bump patch
version=`cat VERSION`
echo "version: $version"

# run build
./build.sh

# tag it
git add -A
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push
git push --tags

docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

# push it
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version
