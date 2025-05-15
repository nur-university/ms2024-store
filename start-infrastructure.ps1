$env:COMPOSE_PROJECT_NAME = "store-infrastructure"

# Levantar la infraestructura con Docker Compose
docker compose -f './docker-infrastructure/docker-compose-only-infrastructure.yml' up -d

# Ejecutar el script de inicialización en el contenedor de Consul
docker exec consul-server sh /consul-init.sh

# Ejecutar el script de inicialización en el contenedor de Vault
docker exec vault-server sh /vault-init.sh