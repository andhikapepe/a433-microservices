#!/bin/bash

# Membuat Docker image
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images ls

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 andhikapepe/item-app:v1

# Login ke Docker Hub dengan environment variable untuk password
echo $PASSWORD_DOCKER_HUB | docker login -u andhikapepe --password-stdin

# Push ke Docker Hub
docker push andhikapepe/item-app:v1
