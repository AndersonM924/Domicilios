CREATE TABLE "PARAMETROS_GENERALES".ciudad (
	id serial4 NOT NULL,
	nombre varchar(100) NOT NULL,
	pais_id int4 NOT NULL,
	codigo_postal varchar(20) NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT ciudad_pkey PRIMARY KEY (id)
);


-- "PARAMETROS_GENERALES".ciudad foreign keys

ALTER TABLE "PARAMETROS_GENERALES".ciudad ADD CONSTRAINT fk_ciudad_pais FOREIGN KEY (pais_id) REFERENCES "PARAMETROS_GENERALES".pais(id);