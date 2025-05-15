#!/bin/bash

# declaring a variable with the current directory path
current_dir=$(dirname "$(realpath "$0")")
# declaring a variable with the parent directory path
parent_dir=$(dirname "$current_dir")

./scripts/clone-repository.sh https://github.com/nur-university/ms2024-store-inventory.git $parent_dir/Services/Identity
./scripts/clone-repository.sh https://github.com/nur-university/ms2024-store-api-gateway.git $parent_dir/Services/ApiGateway
./scripts/clone-repository.sh https://github.com/nur-university/ms2024-store-catalog.git $parent_dir/Services/Catalog
./scripts/clone-repository.sh https://github.com/nur-university/ms2024-store-inventory.git $parent_dir/Services/Inventory
./scripts/clone-repository.sh https://github.com/nur-university/sk2024-store-access.git $parent_dir/SharedKernel/Nur.Store2025.Access
./scripts/clone-repository.sh https://github.com/nur-university/sk2024-store-integration.git $parent_dir/SharedKernel/Nur.Store2025.Integration
./scripts/clone-repository.sh https://github.com/nur-university/sk2024-store-security.git $parent_dir/SharedKernel/Nur.Store2025.Security
