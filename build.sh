#
# Build script just rund docker build
#
set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=asokolsky
# image name
IMAGE=pystone


docker build -t $USERNAME/$IMAGE:latest .
