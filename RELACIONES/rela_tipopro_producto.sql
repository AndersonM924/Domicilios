CREATE TABLE "RELACIONES".rela_tipopro_producto (
	id serial4 NOT NULL,
	tipoproducto_id int4 NOT NULL,
	producto_id int4 NOT NULL,
	CONSTRAINT rela_tipopro_producto_pkey PRIMARY KEY (id)
);


-- "RELACIONES".rela_tipopro_producto foreign keys

ALTER TABLE "RELACIONES".rela_tipopro_producto ADD CONSTRAINT fk_productos FOREIGN KEY (producto_id) REFERENCES "INVENTARIOS".productos(id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "RELACIONES".rela_tipopro_producto ADD CONSTRAINT fk_tipoproducto_id FOREIGN KEY (tipoproducto_id) REFERENCES "INVENTARIOS".tipos_productos(id);