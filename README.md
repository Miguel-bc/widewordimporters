
# My SQL Project

## Descripción
Este proyecto contiene ejemplos y demostraciones de habilidades en SQL Server utilizando las bases de datos de ejemplo WideWorldImporters.

## Estructura del Proyecto
- `/data`: Contiene los archivos de backup de la base de datos.
- `/src/sql`: Scripts SQL como procedimientos almacenados, funciones, y vistas.
- `/src/scripts`: Scripts de automatización y configuración.
- `/docs`: Documentación del proyecto, incluyendo diagramas y guías.

## Requisitos Previos
- SQL Server 2016 o superior
- SQL Server Management Studio (SSMS)
- Git

## Cómo Configurar el Proyecto
1. Clona el repositorio:
   ```sh
   git clone https://github.com/Miguel-bc/widewordimporters.git
   cd widewordimporters

### 2. Descargar los Archivos de la Base de Datos
Descarga los archivos `.bak` de la base de datos desde los siguientes enlaces y colócalos en la carpeta `/data`:

- [WideWorldImporters](https://www.microsoft.com/en-us/download/details.aspx?id=49506)

### 3. Restaurar las Bases de Datos
Restaura las bases de datos utilizando SQL Server Management Studio o los scripts de restauración en `/src/scripts`:

#### Usando SQL Server Management Studio (SSMS)
1. Abre SQL Server Management Studio (SSMS).
2. Conéctate a tu instancia de SQL Server.
3. Haz clic derecho en "Databases" y selecciona "Restore Database...".
4. En la ventana de restauración, selecciona "Device" y luego "Add" para elegir tu archivo `.bak` desde la carpeta `/data`.
5. Completa el proceso de restauración siguiendo los pasos del asistente.

#### Usando Scripts SQL
Ejecuta los siguientes scripts SQL en SSMS:

```sql
-- Restaurar WideWorldImporters OLTP
RESTORE DATABASE WideWorldImporters
FROM DISK = 'C:\path\to\your\project\data\WideWorldImporters-Standard.bak'
WITH MOVE 'WWI_Primary' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WideWorldImporters.mdf',
     MOVE 'WWI_Log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WideWorldImporters_log.ldf',
     REPLACE;

-- Restaurar WideWorldImportersDW OLAP
RESTORE DATABASE WideWorldImportersDW
FROM DISK = 'C:\path\to\your\project\data\WideWorldImportersDW-Standard.bak'
WITH MOVE 'WWI_DW_Primary' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WideWorldImportersDW.mdf',
     MOVE 'WWI_DW_Log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WideWorldImportersDW_log.ldf',
     REPLACE;

### 4. Ejecutar los Scripts SQL
Ejecuta los scripts SQL en `/src/sql` para crear procedimientos almacenados, vistas, funciones, etc.

### 5. Consultar Documentación Adicional
Consulta la documentación adicional en `/docs` para más detalles sobre el uso y la estructura del proyecto.

## Recursos Adicionales
- [WideWorldImporters OLTP Download](enlace-a-descarga-oltp)
- [WideWorldImporters OLAP Download](enlace-a-descarga-olap)

## Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.

