CREATE TABLE "VENTAS".detalle_pedido (
	id serial4 NOT NULL,
	pedido_id int4 NOT NULL,
	producto_id int4 NOT NULL,
	cantidad int4 NOT NULL,
	precio_unitario numeric(10, 2) NOT NULL,
	subtotal numeric(10, 2) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT detalle_pedido_cantidad_check CHECK ((cantidad > 0)),
	CONSTRAINT detalle_pedido_pkey PRIMARY KEY (id),
	CONSTRAINT detalle_pedido_precio_unitario_check CHECK ((precio_unitario >= (0)::numeric)),
	CONSTRAINT detalle_pedido_subtotal_check CHECK ((subtotal >= (0)::numeric))
);


-- "VENTAS".detalle_pedido foreign keys

ALTER TABLE "VENTAS".detalle_pedido ADD CONSTRAINT fk_pedido FOREIGN KEY (pedido_id) REFERENCES "VENTAS".pedidos(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "VENTAS".detalle_pedido ADD CONSTRAINT fk_productos FOREIGN KEY (producto_id) REFERENCES "INVENTARIOS".productos(id) ON DELETE RESTRICT ON UPDATE CASCADE;