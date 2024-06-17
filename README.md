
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
Descarga el archivo `.bak` de la base de datos desde el siguiente enlace y colócalo en la carpeta `/data`:

- [WideWorldImporters](https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0)

En este proyecto, utilicé la base de datos WideWorldImportersDW-Full.bak para OLAP (Procesamiento Analítico en Línea), ideal para análisis y reportes de datos, mientras que WideWorldImporters-Full.bak, se utiliza para OLTP (Procesamiento de Transacciones en Línea) y HTAP (Procesamiento Híbrido de Transacciones y Análisis). La base de datos OLTP es adecuada para manejar un gran número de transacciones rápidas y consistentes, mientras que HTAP permite realizar análisis operativos en tiempo real.

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
-- Restaurar WideWorldImportersDW OLAP
RESTORE DATABASE WideWorldImportersDW
FROM DISK = 'C:\path\to\your\project\data\WideWorldImportersDW-Standard.bak'
WITH MOVE 'WWI_DW_Primary' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WideWorldImportersDW.mdf',
     MOVE 'WWI_DW_Log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WideWorldImportersDW_log.ldf',
     REPLACE;
```

### 4. Ejecutar los Scripts SQL en SSMS

- Abre SSMS y conéctate a tu instancia de SQL Server.
- Abre una nueva consulta (Ctrl + N).
- Copia y pega tu script SQL en la ventana de consulta.
- Asegúrate de seleccionar la base de datos correcta en la lista desplegable de la barra de herramientas de SSMS.
- Ejecuta el script presionando F5 o haciendo clic en el botón de ejecución (o puedes ejecutar secciones específicas de tu script seleccionándolas y luego ejecutándolas).
- Ejecuta los scripts SQL en `/src/sql` para crear procedimientos almacenados, vistas, funciones, etc.

### 5. Consultar Documentación Adicional
Consulta la documentación adicional en `/docs` para más detalles sobre el uso y la estructura del proyecto.

## Recursos Adicionales
- [WideWorldImporters OLTP Download](enlace-a-descarga-oltp)
- [WideWorldImporters OLAP Download](enlace-a-descarga-olap)

## Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.

