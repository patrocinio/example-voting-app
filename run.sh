COMPOSE_FILES="-f docker-compose-services.yml -f docker-compose-volumes.yml -f docker-compose-networks.yml"
docker-compose $COMPOSE_FILES down
docker-compose $COMPOSE_FILES up -d
docker-compose $COMPOSE_FILES ps
