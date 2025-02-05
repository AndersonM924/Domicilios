CREATE TABLE "INVENTARIOS".productos (
	id serial4 NOT NULL,
	tipo_produc_id int4 NOT NULL,
	nombre varchar(100) NOT NULL,
	descripcion varchar(100) NOT NULL,
	precio numeric NOT NULL,
	activo bool DEFAULT true NOT NULL,
	imagen_url varchar(255) NULL,
	CONSTRAINT productos_pkey PRIMARY KEY (id)
);


-- "INVENTARIOS".productos foreign keys

ALTER TABLE "INVENTARIOS".productos ADD CONSTRAINT fk_tipoproducto FOREIGN KEY (tipo_produc_id) REFERENCES "INVENTARIOS".tipos_productos(id) ON DELETE RESTRICT ON UPDATE CASCADE;