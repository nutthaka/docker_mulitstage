#!/bin/bash

docker images -f "dangling=true"
echo "Removing intermediate images (tagged <none>) ..."
docker rmi $(docker images -f "dangling=true" -q)
