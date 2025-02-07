CREATE TABLE "RELACIONES".rela_asignarepartidores (
	id serial4 NOT NULL,
	pedido_id int4 NULL,
	repartidor_id int4 NULL,
	fecha_asignacion timestamp NULL,
	estado_asignacion text NOT NULL,
	CONSTRAINT asignacion_repartidores_estado_asignacion_check CHECK ((estado_asignacion = ANY (ARRAY['pendiente'::text, 'en ruta'::text, 'entregado'::text]))),
	CONSTRAINT rela_asignarepartidores_pkey PRIMARY KEY (id)
);


-- "RELACIONES".rela_asignarepartidores foreign keys

ALTER TABLE "RELACIONES".rela_asignarepartidores ADD CONSTRAINT fk_asiganacion_repartidores FOREIGN KEY (pedido_id) REFERENCES "VENTAS".pedidos(id);
ALTER TABLE "RELACIONES".rela_asignarepartidores ADD CONSTRAINT fk_asignacion_repartidores FOREIGN KEY (repartidor_id) REFERENCES "PARAMETROS_GENERALES".repartidores(id);