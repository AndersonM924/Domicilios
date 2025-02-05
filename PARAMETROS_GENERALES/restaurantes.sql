CREATE TABLE "PARAMETROS_GENERALES".restaurantes (
	id serial4 NOT NULL,
	nombre varchar(240) NOT NULL,
	celular numeric(15) NOT NULL,
	pais_id int4 NOT NULL,
	ciudad_id int4 NOT NULL,
	barrio varchar(50) NULL,
	direccion varchar(240) NULL,
	codigo_postal int4 NULL,
	categoria_id int4 NOT NULL,
	horarrio_apertura time NOT NULL,
	horario_cierre time NOT NULL,
	comentario_id int4 NOT NULL,
	CONSTRAINT restaurantes_pk PRIMARY KEY (id)
);


-- "PARAMETROS_GENERALES".restaurantes foreign keys

ALTER TABLE "PARAMETROS_GENERALES".restaurantes ADD CONSTRAINT fk_categorias FOREIGN KEY (categoria_id) REFERENCES "PARAMETROS_GENERALES".categoriatiporestaurante(id);
ALTER TABLE "PARAMETROS_GENERALES".restaurantes ADD CONSTRAINT fk_ciudad FOREIGN KEY (ciudad_id) REFERENCES "PARAMETROS_GENERALES".ciudad(id);
ALTER TABLE "PARAMETROS_GENERALES".restaurantes ADD CONSTRAINT fk_ciudad_pais FOREIGN KEY (pais_id) REFERENCES "PARAMETROS_GENERALES".pais(id);