CREATE TABLE "RELACIONES".rela_productorestaurante (
	id serial4 NOT NULL,
	producto_id int4 NULL,
	restaurante_id int4 NULL,
	CONSTRAINT rela_productorestaurante_pkey PRIMARY KEY (id)
);


-- "RELACIONES".rela_productorestaurante foreign keys

ALTER TABLE "RELACIONES".rela_productorestaurante ADD CONSTRAINT fk_producto_id FOREIGN KEY (producto_id) REFERENCES "INVENTARIOS".productos(id);
ALTER TABLE "RELACIONES".rela_productorestaurante ADD CONSTRAINT fk_restaurante_id FOREIGN KEY (restaurante_id) REFERENCES "PARAMETROS_GENERALES".restaurantes(id);