CREATE TABLE "VENTAS".comentariosvaloraion (
	id serial4 NOT NULL,
	pedido_id int4 NULL,
	usuario_id int4 NULL,
	restaurante_id int4 NULL,
	calificacion int2 NOT NULL,
	comentario varchar(100) NULL,
	fecha timestamp NULL,
	CONSTRAINT comentariosvaloraion_calificacion_check CHECK (((calificacion >= 1) AND (calificacion <= 5))),
	CONSTRAINT comentariosvaloraion_pkey PRIMARY KEY (id)
);


-- "VENTAS".comentariosvaloraion foreign keys

ALTER TABLE "VENTAS".comentariosvaloraion ADD CONSTRAINT fk_pedidos FOREIGN KEY (pedido_id) REFERENCES "VENTAS".pedidos(id);
ALTER TABLE "VENTAS".comentariosvaloraion ADD CONSTRAINT fk_restaurante FOREIGN KEY (restaurante_id) REFERENCES "PARAMETROS_GENERALES".restaurantes(id);
ALTER TABLE "VENTAS".comentariosvaloraion ADD CONSTRAINT fk_usuarios FOREIGN KEY (usuario_id) REFERENCES "PARAMETROS_GENERALES".usuarios(id);