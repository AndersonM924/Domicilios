CREATE TABLE "CARTERA".pagos (
	id serial4 NOT NULL,
	pedido_id int4 NOT NULL,
	metodo_pago int4 NOT NULL,
	entidadbancaria_id int4 NOT NULL,
	numero_tarjeta varchar NOT NULL,
	fecha_pago timestamp NOT NULL,
	estado_pago varchar(20) NOT NULL,
	CONSTRAINT pagos_estado_pago_check CHECK (((estado_pago)::text = ANY (ARRAY[('pendiente'::character varying)::text, ('completado'::character varying)::text, ('fallido'::character varying)::text]))),
	CONSTRAINT pagos_pkey PRIMARY KEY (id)
);


-- "CARTERA".pagos foreign keys

ALTER TABLE "CARTERA".pagos ADD CONSTRAINT fk_entidadbancaria FOREIGN KEY (entidadbancaria_id) REFERENCES "PARAMETROS_GENERALES".entidades_bancarias(id);
ALTER TABLE "CARTERA".pagos ADD CONSTRAINT metodo_pago FOREIGN KEY (metodo_pago) REFERENCES "PARAMETROS_GENERALES".metodos_pago(id);