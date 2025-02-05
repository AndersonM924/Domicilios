CREATE TABLE IF NOT EXISTS "AUDITORIA".logs_actividades
(
    id serial NOT NULL,
    pedido_id integer NOT NULL,
    notificacion_id integer NOT NULL,
    entrega_id integer NOT NULL,
    usuario_id integer NOT NULL,
    tipo_actividad character varying(100) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(240) COLLATE pg_catalog."default" NOT NULL,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    estado character varying(50) COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT logs_actividades_pkey PRIMARY KEY (id),
    CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id)
        REFERENCES "VENTAS".pedidos (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT logs_actividades_estado_check CHECK (estado::text = ANY (ARRAY['exitoso'::character varying::text, 'fallido'::character varying::text])),
    CONSTRAINT logs_actividades_tipo_actividad_check CHECK (tipo_actividad::text = ANY (ARRAY['creacion'::character varying::text, 'modificacion'::character varying::text, 'eliminacion'::character varying::text, 'login'::character varying::text, 'logout'::character varying::text, 'consulta'::character varying::text, 'error'::character varying::text]))
)