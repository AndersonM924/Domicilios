-- "PARAMETROS_GENERALES".metodos_pago definition

-- Drop table

-- DROP TABLE "PARAMETROS_GENERALES".metodos_pago;

CREATE TABLE "PARAMETROS_GENERALES".metodos_pago (
	id serial4 NOT NULL,
	nombre varchar(100) NOT NULL,
	descripcion text NULL,
	estado varchar(50) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT metodos_pago_estado_check CHECK (((estado)::text = ANY ((ARRAY['activo'::character varying, 'inactivo'::character varying])::text[]))),
	CONSTRAINT metodos_pago_nombre_key UNIQUE (nombre),
	CONSTRAINT metodos_pago_pkey PRIMARY KEY (id)
);