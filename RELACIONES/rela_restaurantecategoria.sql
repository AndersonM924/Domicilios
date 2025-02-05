CREATE TABLE "RELACIONES".rela_restaurantecategoria (
	id serial4 NOT NULL,
	restaurante_id int4 NULL,
	categoria_id int4 NULL,
	CONSTRAINT rela_restaurantecategoria_pkey PRIMARY KEY (id)
);


-- "RELACIONES".rela_restaurantecategoria foreign keys

ALTER TABLE "RELACIONES".rela_restaurantecategoria ADD CONSTRAINT fk_categoria_id FOREIGN KEY (categoria_id) REFERENCES "PARAMETROS_GENERALES".categoriatiporestaurante(id);
ALTER TABLE "RELACIONES".rela_restaurantecategoria ADD CONSTRAINT fk_restaurante_id FOREIGN KEY (restaurante_id) REFERENCES "PARAMETROS_GENERALES".restaurantes(id);