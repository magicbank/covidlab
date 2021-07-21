NAME="magicbank/covidlab"
TAGS="cron"
IMAGE="${NAME}:${TAGS}"
docker push ${IMAGE}
if [[ "" != "$(docker images -q ${IMAGE})" ]]; then
  docker rmi $(docker images -q ${IMAGE})
fi
