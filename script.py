import pandas as pd
from sqlalchemy import create_engine

#Carga del archivo Excel
ruta = "/Cursos/Proyectos Personales/Python-SQL/llamadas_callcenter.xlsx"

df = pd.read_excel(ruta)

print(df.head())

# Configuracion de conexion a PostgreSQL
usuario = "postgres"
contraseña = "1234"
host = "localhost"
puerto = "5432"
base_datos = "ejemplo_call_center"

# Creacion del motor de conexion
engine = create_engine(f"postgresql+psycopg2://{usuario}:{contraseña}@{host}:{puerto}/{base_datos}")

try:
    # Carga los datos al servidor, reemplazando si existe la tabla
    df.to_sql("llamadas_callcenter", engine, if_exists="replace", index=False)
    print("✅ Datos cargados con éxito.")
except Exception as e:
    print("❌ Error al cargar datos:", e)