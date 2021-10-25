IMAGE_NAME=web_dev_tools
if docker images | grep -E "^${IMAGE_NAME} "; then
  echo "\"${IMAGE_NAME}\"イメージは既に存在するのでビルドしません。"
else
  echo "\"${IMAGE_NAME}\"イメージがないのでビルドしています..."
  docker build -q -t $IMAGE_NAME ./
fi
docker run --rm -it -v $(pwd):/home/app -w /home/app -p 3000:3000 -p 3001:3001 ${IMAGE_NAME} npm run web-related
