# Store

Este proyecto permite ejecutar todos los proyectos desarrollados en una sola solucion de Visual Studio. Para iniciar debe ejecutar
el script `setup-project.sh` o `setup-project.ps1` (dependiendo del sistema operativo). Este script descargara todos los proyectos en directorio padre (`../`) por lo que es importante tomar en cuenta la ubicacion de este script.

# Requisitos
- Tener instalado git en el sistema y este pueda ejecutarse desde la terminal.
- Tener instalado Visual Studio 2022 o superior.

Una vez descargados los proyectos, se podra ejecutar el proyecto `Store.sln` desde Visual Studio.
Si se desea ejecutar un proyecto en especifico, se puede abrir el proyecto desde Visual Studio y abrir la solucion deseada.

> [!IMPORTANT]
> Si se desea ejecutar el proyecto `Store.sln` desde Visual Studio, es necesario tener instalado el SDK de .NET 8.0 o superior. Para ello, se puede descargar desde la pagina oficial de [.NET](https://dotnet.microsoft.com/download/dotnet/8.0).

Con el script `start-infrastructure.sh` o `start-infrastructure.ps1` (dependiendo del sistema operativo) se podrá iniciar los servicios de infraestructura necesarios para el proyecto, para lo cual es necesario tener instalado Docker y Docker Compose en el sistema. Este script se encargara de descargar las imagenes necesarias y ejecutar los contenedores necesarios para el funcionamiento del proyecto.

> [!NOTE]  
> Al ejecutar la imagen de Hashicorp Vault en desarrollo, los secrets almacenados dentro de la imagen se perderán al detener el contenedor. Por lo tanto, luego de iniciar nuevamente el contenedor, se deberán volver a crear los secrets. Puede ejecutar el siguiente comando para crear los secrets nuevamente:

```bash
docker exec vault-server sh /vault-init.sh
```

Por defecto, los proyectos utiliza la configuración definidos en el arhivo appsettings.Development.json. Si se utilizar la configuracion definida en Vault, deberá modificar el parametro `UseSecretManager` a `true` en el archivo appsettings.Development.json.json.
```json
{
        ...
        "UseSecretManager": true
        ...
}
```