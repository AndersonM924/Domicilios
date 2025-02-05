CREATE TABLE "PARAMETROS_GENERALES".categoriatiporestaurante (
	id serial4 NOT NULL,
	nombre varchar(240) NULL,
	activo bool DEFAULT true NOT NULL,
	CONSTRAINT categoria_pkey PRIMARY KEY (id)
);