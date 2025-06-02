# Obtener el directorio actual del script
$currentDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
# Obtener el directorio padre
$parentDir = Split-Path -Path $currentDir -Parent

# Ejecutar el script de clonado para cada repositorio
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/ms2024-store-identity.git" "$parentDir/Services/Identity"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/ms2024-store-api-gateway.git" "$parentDir/Services/ApiGateway"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/ms2024-store-catalog.git" "$parentDir/Services/Catalog"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/ms2024-store-inventory.git" "$parentDir/Services/Inventory"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/ms2024-store-orders.git" "$parentDir/Services/Orders"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/ms2024-store-payments.git" "$parentDir/Services/Payments"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/sk2024-store-access.git" "$parentDir/SharedKernel/Nur.Store2025.Access"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/sk2024-store-integration.git" "$parentDir/SharedKernel/Nur.Store2025.Integration"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/sk2024-store-security.git" "$parentDir/SharedKernel/Nur.Store2025.Security"
& "$currentDir/scripts/clone-repository.ps1" "https://github.com/nur-university/sk2024-store-observability.git" "$parentDir/SharedKernel/Nur.Store2025.Observability"