# Build and push the docker image to AWS ECR
RUBY_VERSION="3.2.2"
IMAGE_NAME="amplify-ruby-build"
ECR_REPO="public.ecr.aws/z8u1m2l7/aptdev/amplify-ruby-build"

docker build --build-arg RUBY_VERSION=$RUBY_VERSION -t $IMAGE_NAME .

IMAGE_ID=`docker images $IMAGE_NAME --format '{{.ID}}'`

echo "Created image $IMAGE_ID"

aws ecr-public get-login-password --profile ecr | docker login --username AWS --password-stdin public.ecr.aws/z8u1m2l7

docker tag $IMAGE_ID $ECR_REPO:latest

docker push $ECR_REPO:latest
