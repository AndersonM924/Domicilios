CREATE TABLE "INVENTARIOS".tipos_productos (
	id serial4 NOT NULL,
	nombre_tipo varchar(100) NOT NULL,
	activo bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT tipos_productos_pkey PRIMARY KEY (id)
);