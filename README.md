# phred_docker
Phred gems should not be added to the public repository. For each docker build, provide the necessary gem file locally. See on how to download gem files using 'gem fetch'.

Build the new docker from the root of the repository:
docker build -t phred .

Tag the version of the build:
docker tag phred phredqa/phred:v0.2.85

Push the new image to Docker registry:
docker push phredqa/phred

Provide the proper credentials in order to authorize the push.
