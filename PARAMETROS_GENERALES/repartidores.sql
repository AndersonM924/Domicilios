-- "PARAMETROS_GENERALES".repartidores definition

-- Drop table

-- DROP TABLE "PARAMETROS_GENERALES".repartidores;

CREATE TABLE "PARAMETROS_GENERALES".repartidores (
	id serial4 NOT NULL,
	nombre varchar(20) NULL,
	correo_electronico varchar(50) NULL,
	telefono numeric(15) NOT NULL,
	activo bool DEFAULT true NULL,
	vehiculo_id int4 NULL,
	fecha_registro timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	licencia_conduccion varchar(50) NULL,
	tipo_contrato varchar(50) NULL,
	fecha_nacimiento date NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT repartidores_pkey PRIMARY KEY (id),
	CONSTRAINT repartidores_tipo_contrato_check CHECK (((tipo_contrato)::text = ANY (ARRAY[('empleado'::character varying)::text, ('freelance'::character varying)::text])))
);