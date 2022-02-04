/**Query para productos**/
Select DISTINCT pro.id_producto, pro.nombre As Producto, categoria.nombre As Categoria
FROM Productos pro Inner JOIN Categorias categoria ON
(pro.id_categoria=categoria.id_categoria)

/**Query para Proveedores**/
Select DISTINCT prov.id_proveedor,  prov.razonSocial From Proveedores As prov

/**Query para Trabajadores**/
Select DISTINCT trab.id_trabajador, trab.nombre As Nombre, trab.rol From Trabajadores As trab

/**Query para fecha**/
Select DISTINCT fechaCreacion, CONVERT(Int, DATEPART(day,fechaCreacion)) As dia,
								CONVERT(int, DATEPART(Month,fechaCreacion)) As Mes,
								CONVERT(Int, DATEPART(year,fechaCreacion)) As Año
From Pedidos

/**Query para pedidos**/

select 
proveD.ProveedorDimKey,proD.ProductoDimKey, traD.TrabajadorDimKey,
dp.cantidad,
dp.precioUnitario,dp.igv,dp.total, tieD.TiempoDimKey
from 
Comercio.dbo.Pedidos p
inner join Comercio.dbo.DetallePedidos dp on (dp.id_pedido= p.id_pedido)
inner join ComercioDM.dbo.Dim_Productos proD on (proD.id_producto=dp.id_producto)
inner join ComercioDM.dbo.Dim_Trabajadores traD on traD.id_trabajador=p.id_trabajador
inner join ComercioDM.dbo.Dim_Proveedores proveD on proveD.id_proveedor=p.id_proveedor
inner join ComercioDM.dbo.Dim_Tiempo TieD on (p.fechaCreacion=tieD.fechaCreacion)