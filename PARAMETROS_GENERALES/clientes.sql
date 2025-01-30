-- "PARAMETROS_GENERALES".clientes definition

-- Drop table

-- DROP TABLE "PARAMETROS_GENERALES".clientes;

CREATE TABLE "PARAMETROS_GENERALES".clientes (
	id serial4 NOT NULL,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL,
	email varchar(255) NOT NULL,
	telefono varchar(20) NOT NULL,
	direccion varchar(255) NULL,
	pais_id int4 NOT NULL,
	ciudad_id int4 NOT NULL,
	fecha_nacimiento date NULL,
	genero bpchar(1) NULL,
	fecha_registro timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	estado varchar(50) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT clientes_email_key UNIQUE (email),
	CONSTRAINT clientes_estado_check CHECK (((estado)::text = ANY ((ARRAY['activo'::character varying, 'inactivo'::character varying, 'suspendido'::character varying])::text[]))),
	CONSTRAINT clientes_genero_check CHECK ((genero = ANY (ARRAY['M'::bpchar, 'F'::bpchar, 'O'::bpchar]))),
	CONSTRAINT clientes_pkey PRIMARY KEY (id)
);


-- "PARAMETROS_GENERALES".clientes foreign keys

ALTER TABLE "PARAMETROS_GENERALES".clientes ADD CONSTRAINT fk_cliente_ciudad FOREIGN KEY (ciudad_id) REFERENCES "PARAMETROS_GENERALES".ciudad(id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "PARAMETROS_GENERALES".clientes ADD CONSTRAINT fk_cliente_pais FOREIGN KEY (pais_id) REFERENCES "PARAMETROS_GENERALES".pais(id) ON DELETE RESTRICT ON UPDATE CASCADE;