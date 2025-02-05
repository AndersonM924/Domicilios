CREATE TABLE "RELACIONES".rela_inventario_producto (
	id serial4 NOT NULL,
	restaurante_id int4 NOT NULL,
	producto_id int4 NOT NULL,
	cantidad_disponible int4 NOT NULL,
	CONSTRAINT rela_inventario_producto_pkey PRIMARY KEY (id)
);


-- "RELACIONES".rela_inventario_producto foreign keys

ALTER TABLE "RELACIONES".rela_inventario_producto ADD CONSTRAINT fk_producto_id FOREIGN KEY (producto_id) REFERENCES "INVENTARIOS".productos(id);
ALTER TABLE "RELACIONES".rela_inventario_producto ADD CONSTRAINT fk_restaurante_id FOREIGN KEY (restaurante_id) REFERENCES "PARAMETROS_GENERALES".restaurantes(id);