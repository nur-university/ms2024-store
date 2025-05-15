docker compose -f './docker-infrastructure/docker-compose-only-infrastructure.yml' up -d

docker exec consul-server sh /consul-init.sh
docker exec vault-server sh /vault-init.sh