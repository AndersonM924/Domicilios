create table vehiculos (
ID serial,
Placa varchar,
Marca text,
Modelo integer,
Nombre_del_propietario text, 
Numero_de_poliza varchar
)

select * from public.vehiculos


INSERT INTO public.integrantes 
(nombre)
values ('Pepe'),
('Herminda'),
('Magdalena'),
('Muchacho')

select * from public.integrantes


DELETE FROM public.integrantes
WHERE ID=2;


Select * from public.vehiculos 

insert into public.vehiculos
(placa, marca, modelo, nombre_del_propietario)
values ('kqz 301','ssang yong', '2022', 'Flor Alicia')


UPDATE public.vehiculos
SET numero_de_poliza='ergf456'
where placa='kqz 301';


drop table public.integrantes 

create table integrantes (
ID serial,
nombre varchar,
Sexo varchar,
Fecha_creacion date default NOW()
)

INSERT INTO public.integrantes 
(nombre, sexo)
values ('Pepe', 'Masculino' ),
('Herminda' ,'No definido'),
('Magdalena', 'Femenino'),
('Muchacho' ,'elle')

INSERT INTO public.integrantes 
(nombre, sexo, Fecha_creacion)
values ('Freddy', 'Masculino', '2024-12-01')

alter table  public.integrantes add column telefono bigint 


select * from public.integrantes

alter table  public.integrantes drop column Fecha_creacion