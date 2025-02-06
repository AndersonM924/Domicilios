CREATE TABLE "AUDITORIA".logs_actividades (
	id serial4 NOT NULL,
	pedido_id int4 NOT NULL,
	notificacion_id int4 NOT NULL,
	entrega_id int4 NOT NULL,
	usuario_id int4 NOT NULL,
	tipo_actividad varchar(100) NOT NULL,
	descripcion varchar(240) NOT NULL,
	fecha_hora timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	estado varchar(50) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT logs_actividades_estado_check CHECK (((estado)::text = ANY (ARRAY[('exitoso'::character varying)::text, ('fallido'::character varying)::text]))),
	CONSTRAINT logs_actividades_pkey PRIMARY KEY (id),
	CONSTRAINT logs_actividades_tipo_actividad_check CHECK (((tipo_actividad)::text = ANY (ARRAY[('creacion'::character varying)::text, ('modificacion'::character varying)::text, ('eliminacion'::character varying)::text, ('login'::character varying)::text, ('logout'::character varying)::text, ('consulta'::character varying)::text, ('error'::character varying)::text])))
);


-- "AUDITORIA".logs_actividades foreign keys

ALTER TABLE "AUDITORIA".logs_actividades ADD CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES "VENTAS".pedidos(id);