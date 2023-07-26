# build image item-app
docker build -t item-app:v1 .

# daftar docker image
docker images

# ubah nama image
docker tag item-app:v1 thinkfather/item-app:v1

# login ke docker hub dengan password
export PASSWORD_DOCKER_HUB=moeamarrezadicoding
echo $PASSWORD_DOCKER_HUB | docker login -u thinkfather --password-stdin

# upload images
docker push thinkfather/item-app:v1

