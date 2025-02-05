CREATE TABLE "VENTAS".pedidos (
	id serial4 NOT NULL,
	cliente_id int4 NOT NULL,
	metodo_pago_id int4 NOT NULL,
	fecha_pedido timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	fecha_entrega_estimada timestamp NULL,
	total numeric(10, 2) NOT NULL,
	estado varchar(50) NOT NULL,
	direccion_entrega varchar(255) NOT NULL,
	observaciones varchar(500) NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT pedidos_estado_check CHECK (((estado)::text = ANY ((ARRAY['pendiente'::character varying, 'preparando'::character varying, 'enviado'::character varying, 'entregado'::character varying, 'cancelado'::character varying])::text[]))),
	CONSTRAINT pedidos_pkey PRIMARY KEY (id),
	CONSTRAINT pedidos_total_check CHECK ((total >= (0)::numeric))
);


-- "VENTAS".pedidos foreign keys

ALTER TABLE "VENTAS".pedidos ADD CONSTRAINT fk_pedido_cliente FOREIGN KEY (cliente_id) REFERENCES "PARAMETROS_GENERALES".clientes(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "VENTAS".pedidos ADD CONSTRAINT fk_pedido_metodo_pago FOREIGN KEY (metodo_pago_id) REFERENCES "PARAMETROS_GENERALES".metodos_pago(id) ON DELETE RESTRICT ON UPDATE CASCADE;