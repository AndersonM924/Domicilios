CREATE TABLE "ALERTAS".notificaciones (
	id serial4 NOT NULL,
	pedido_id int4 NOT NULL,
	tipo_notificacion_id int4 NOT NULL,
	titulo varchar(255) NOT NULL,
	mensaje text NOT NULL,
	estado varchar(50) NOT NULL,
	fecha_envio timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	fecha_lectura timestamp NULL,
	prioridad varchar(50) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT notificaciones_estado_check CHECK (((estado)::text = ANY (ARRAY[('pendiente'::character varying)::text, ('enviado'::character varying)::text, ('leido'::character varying)::text]))),
	CONSTRAINT notificaciones_pkey PRIMARY KEY (id),
	CONSTRAINT notificaciones_prioridad_check CHECK (((prioridad)::text = ANY (ARRAY[('baja'::character varying)::text, ('media'::character varying)::text, ('alta'::character varying)::text])))
);