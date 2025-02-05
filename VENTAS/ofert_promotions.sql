CREATE TABLE "VENTAS".ofert_promotions (
	id serial4 NOT NULL,
	nombre_promo varchar(255) NOT NULL,
	descripcion varchar(50) NULL,
	tipo varchar(50) NOT NULL,
	producto_id int4 NOT NULL,
	fecha_inicio date NOT NULL,
	fecha_fin date NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT ofert_promotions_pkey PRIMARY KEY (id),
	CONSTRAINT ofert_promotions_tipo_check CHECK (((tipo)::text = ANY (ARRAY[('descuento'::character varying)::text, ('cupon'::character varying)::text])))
);


-- "VENTAS".ofert_promotions foreign keys

ALTER TABLE "VENTAS".ofert_promotions ADD CONSTRAINT fk_productos FOREIGN KEY (producto_id) REFERENCES "INVENTARIOS".productos(id) ON DELETE RESTRICT ON UPDATE CASCADE;