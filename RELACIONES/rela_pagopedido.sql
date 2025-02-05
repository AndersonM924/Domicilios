CREATE TABLE "RELACIONES".rela_pagopedido (
	id serial4 NOT NULL,
	pedido_id int4 NULL,
	pago_id int4 NULL,
	CONSTRAINT rela_pagopedido_pkey PRIMARY KEY (id)
);


-- "RELACIONES".rela_pagopedido foreign keys

ALTER TABLE "RELACIONES".rela_pagopedido ADD CONSTRAINT fk_pago_id FOREIGN KEY (pago_id) REFERENCES "CARTERA".pagos(id);
ALTER TABLE "RELACIONES".rela_pagopedido ADD CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES "VENTAS".pedidos(id);