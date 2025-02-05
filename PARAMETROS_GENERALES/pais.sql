CREATE TABLE "PARAMETROS_GENERALES".pais (
	id serial4 NOT NULL,
	nombre varchar(100) NOT NULL,
	codigo_iso varchar(3) NOT NULL,
	continente varchar(50) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT pais_codigo_iso_key UNIQUE (codigo_iso),
	CONSTRAINT pais_nombre_key UNIQUE (nombre),
	CONSTRAINT pais_pkey PRIMARY KEY (id)
);