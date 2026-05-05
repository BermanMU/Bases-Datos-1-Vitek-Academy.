use db_jardineria
go

select * from cliente 

select COUNT (*) as total_clientes
from cliente;

select COUNT (limite_credito) as clientes_sin_credito
from cliente;

select SUM(limite_credito) as total_credito
from cliente;

select AVG(limite_credito) as total_credito
from cliente;

select MIN(limite_credito) as total_credito
from cliente;


select MAX(limite_credito) as total_maximo
from cliente;

select 
COUNT(*) as clientes,
SUM(limite_credito) as total_credito,
AVG(limite_credito) as promedio_credito,
MIN(limite_credito) as minimo,
MAX(limite_credito) as maximo
from cliente;

select * from pedido

select
COUNT (*) as total_pedidos,
MIN(fecha_pedido) as primero,
MAX(fecha_pedido) as ultimo
from pedido;

---Total de pedidos por cliente (solo los que tienen mas de 5 pedidos)

select codigo_cliente,count(*) as total_pedidos
from pedido
group by codigo_cliente
having count(*) > 6;

--- promedio de precios de PRODUCTOS por gama (solo precio_venta > a 10)---

select gama,AVG(precio_venta) as pedido_precio
from producto
GROUP BY gama

having AVG (precio_venta)> 10;

---total pagado por cada cliente (solo los que han  pagado > 10000)---

select codigo_cliente,sum (total) as total_pagado
from pago
group by codigo_cliente 
having sum(total) > 10000;

select codigo_oficina,count(*) as cantidad_empleados
from empleado
group by codigo_oficina
having count (*)>2;

select codigo_pedido, sum(cantidad) as total_productos
from detalle_pedido
group by codigo_pedido
having sum(cantidad) > 100;

---clientes por pais (solo paises con muchos clientes )

select pais, count(*) as total_clientes
from cliente
group by pais 
having count (*)> 1;