NAME="magicbank/covidlab"
TAGS="cron"
IMAGE="${NAME}:${TAGS}"
DOCKERFILE="Dockerfile"
BASEPATH="."
if [[ "" != "$(docker images -q ${IMAGE})" ]]; then
  docker rmi $(docker images -q ${IMAGE})
fi
docker build -t ${IMAGE} -f ${DOCKERFILE} ${BASEPATH}
if [[ "" != "$(docker images -q -f 'dangling=true')" ]]; then
  docker rmi $(docker images -q -f 'dangling=true')
fi
