# 📊 Carga de archivo Excel a PostgreSQL con Python

Este script en Python permite cargar datos desde un archivo **Excel (.xlsx)** a una tabla en una base de datos **PostgreSQL** utilizando **Pandas** y **SQLAlchemy**.

## 🛠 Requisitos

Asegúrate de tener instaladas las siguientes dependencias:

```bash
pip install pandas openpyxl sqlalchemy psycopg2
```
Proyecto /CENACE
│
├── datascience/
│   ├── llamadas_callcenter.xlsx   # Archivo Excel con los datos
│   └── script.py                  # Script principal de carga

El script lee un archivo Excel y lo carga en una base de datos PostgreSQL. A continuación se configuran los parámetros de conexión:

```python
usuario = "postgres"
contraseña = "1234"
host = "localhost"
puerto = "5432"
base_datos = "ejemplo_call_center"
```

Luego, se crea un motor de conexión con SQLAlchemy y se sube el DataFrame a la base de datos:

```python
engine = create_engine(f"postgresql+psycopg2://{usuario}:{contraseña}@{host}:{puerto}/{base_datos}")
df.to_sql("llamadas_callcenter", engine, if_exists="replace", index=False)

```
**Nota:** La opción if_exists="replace" elimina la tabla si existe y la crea de nuevo. Puedes cambiarla a "append" para agregar datos sin eliminar la tabla existente.

# 📝 Uso
1. Coloca el archivo Excel en la ruta correcta (/datascience/llamadas_callcenter.xlsx).

2. Ejecuta el script:
``` bash
python script.py
```
3. Si la conexión es exitosa, verás un mensaje de confirmación:

```bash
✅ Datos cargados con éxito.
```
# 🧠 Consideraciones
El archivo Excel debe tener una estructura tabular coherente (columnas con nombres).

La base de datos y la tabla deben existir previamente si no se utiliza if_exists="replace".

Asegúrate de que el servidor PostgreSQL esté en ejecución y aceptando conexiones.

# 👨‍💻 Autor
Desarrollado por Alejandro Arellano 
luis.alex.2711@gmail.com




