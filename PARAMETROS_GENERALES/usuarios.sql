-- "PARAMETROS_GENERALES".usuarios definition

-- Drop table

-- DROP TABLE "PARAMETROS_GENERALES".usuarios;

CREATE TABLE "PARAMETROS_GENERALES".usuarios (
	id serial4 NOT NULL,
	nombre varchar(240) NOT NULL,
	correo_electronico varchar(50) NOT NULL,
	celular numeric(15) NOT NULL,
	pais_id int4 NOT NULL,
	ciudad_id int4 NOT NULL,
	direccion varchar(240) NOT NULL,
	codigo_postal int4 NOT NULL,
	tipo_usuario varchar(50) NOT NULL,
	contrasena varchar(10) NOT NULL,
	fecha_registro timestamp NOT NULL,
	activo bool DEFAULT true NOT NULL,
	CONSTRAINT usuarios_pk PRIMARY KEY (id),
	CONSTRAINT usuarios_tipo_usuario_check CHECK (((tipo_usuario)::text = ANY ((ARRAY['Administrador'::character varying, 'Cliente'::character varying, 'Auditor'::character varying, 'Repartidor'::character varying])::text[])))
);


-- "PARAMETROS_GENERALES".usuarios foreign keys

ALTER TABLE "PARAMETROS_GENERALES".usuarios ADD CONSTRAINT fk_ciudad FOREIGN KEY (ciudad_id) REFERENCES "PARAMETROS_GENERALES".ciudad(id);
ALTER TABLE "PARAMETROS_GENERALES".usuarios ADD CONSTRAINT fk_ciudad_pais FOREIGN KEY (pais_id) REFERENCES "PARAMETROS_GENERALES".pais(id);