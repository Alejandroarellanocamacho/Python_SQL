-- Database: ejemplo_call_center

-- DROP DATABASE IF EXISTS ejemplo_call_center;

CREATE DATABASE ejemplo_call_center
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Mexico.1252'
    LC_CTYPE = 'Spanish_Mexico.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


-- Table: public.llamadas_callcenter

-- DROP TABLE IF EXISTS public.llamadas_callcenter;

CREATE TABLE IF NOT EXISTS public.llamadas_callcenter
(
    fecha_llamada text COLLATE pg_catalog."default",
    id_agente integer,
    nombre_agente text COLLATE pg_catalog."default",
    "id_campaña" text COLLATE pg_catalog."default",
    "campaña" text COLLATE pg_catalog."default",
    resultado text COLLATE pg_catalog."default",
    "duración_min" bigint,
    "inversión" bigint,
    ingreso money
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.llamadas_callcenter
    OWNER to postgres;