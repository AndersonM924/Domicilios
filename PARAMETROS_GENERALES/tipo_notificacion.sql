CREATE TABLE "PARAMETROS_GENERALES".tipo_notificacion (
	id serial4 NOT NULL,
	nombre varchar(100) NOT NULL,
	descripcion text NULL,
	CONSTRAINT tipo_notificacion_nombre_key UNIQUE (nombre),
	CONSTRAINT tipo_notificacion_pkey PRIMARY KEY (id)
);