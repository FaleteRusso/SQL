--Ejemplos de filtros
--Obtener los productos de order details cuyo precio sea mayor a 50
Select* from public.order_details
where unit_price > 50;
--Obtener los productos de order details cuya cantidad sea mayor a 75
Select* from public.order_details
where quantity >75
--Obtener empleados que contengan W eb su apellido
Select* from public.employees
where last_name like'%w%';
--Obtener lo sproductos de orders_details cuya antidad se encuentre enntre
--75 y 150
select product_id, quantity from public.order_details
where quantity between 75 and 150;
--Obtener el stock que esté entre 100 y 200
Select* from products
where units_in_stock between 100 and 200;
--obtener los productos cuyos nombres terminen en n
Select*from products
where product_name like '%n';
--obtener los productos cuyos nombres empiecen en C y terminen en i
Select*from products
where product_name like 'C%i';
--obtener los productos cuyo proveedor sea 1,5,7,2
Select *from public.products
where supplier_id in (1,5,7,2);
--obtener los productos cuyo nombre comience con A,G y R, ordenandolo por orden de producto
Select *from public.products
where product_name like 'A%'
or product_name like 'G%'
or product_name like 'R%'
order by product_name;
--ORDER BY <NOMBRE>
-- Ordenar tabla de procutos por nombre
Select * from public.products
order by product_name;
--ordenar por id descendiente
Select * from public.products
order by product_id desc;

--ordenar tabla productor por categoria asc y proveedor desc
Select * from public.products
order by category_id, supplier_id desc;

--Funciones de agregacion (son: count,sum,avg,max,min)
--La unica que acepta * es count
--y el resto siempre tienen que tener en medio una columna u operacion aritmetica
--Obtener las filas de la tabla de productos
Select count(*) as num_registro
from products;
Select count(*) num_registro
from products;
--Obtener numero de filas de tabla empleados
Select count(*) as num_registro
from employees;
Select count(region) as num_registro
from employees;
Select * from order_details;

--Gestion de nulos
create table datos
(a numeric);
insert into datos
values
(8),
(7),
(null),
(5);
select *from datos;
Select sum(a)from datos;

create table datos2
(a numeric,b numeric);

insert into datos2
values
(8,2),
(7,3),
(null,3),
(5,5);
select *from datos2;
Select a+b as suma from datos2;

Select avg(a)from datos;

--obtener precio promedio, maximo y minimo de productos

Select avg (unit_price) promedio, max (unit_price) maximo,
min(unit_price) minimo
from public.products
--Obtener la cantidad promedio, maximo y minimo de order_details
select avg (quantity) promedio, max (quantity) maximo, min (quantity) minimo
from public.order_details;

--Obtener las unidades en stock de los productos
select sum (units_in_stock) unidades
from products;




