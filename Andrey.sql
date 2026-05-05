use db_jardineria
go

select count(*) as total_clientes
from cliente

---count con el * en parentecis mas as para contar todo los datos (practicamente cantidad de reglones)---

select * from cliente
go

select count(limite_credito) as clientes_sin_credito
from cliente

select sum(limite_credito) as total_credito
from cliente;

select avg(limite_credito) as promedio
from cliente;

select min(limite_credito) as credito_minimo
from cliente;

select max(limite_credito) as credito_maximo
from cliente;

select 
count(*) as total_clientes,
sum(limite_credito) as total_credito,
avg(limite_credito) as promedio,
min(limite_credito) as credito_minimo,
max(limite_credito) as credito_maximo
from cliente;

use db_jardineria
go

select * from pedido
go

select
  count(*) as total_pedidos,
  min(fecha_pedido) as primer_pedido,
  max(fecha_pedido) as ultimo_pedido
from pedido;

select codigo_cliente,count(*) as total_pedidos
from pedido
group by codigo_cliente
having count(*) > 5;

--  >  =  <  --

select gama,avg(precio_venta) as promedio_precios
from producto
group by gama
having avg(precio_venta) > 10;

select codigo_cliente,sum(total) as total_pagado
from pago
group by codigo_cliente
having sum(total) > 10000;

select codigo_pedido,sum(cantidad) as total_productos
from detalle_pedido
group by codigo_pedido
having sum(cantidad) > 200;

select pais,count(*) as total_clientes
from cliente
group by pais
having count(*) > 3;