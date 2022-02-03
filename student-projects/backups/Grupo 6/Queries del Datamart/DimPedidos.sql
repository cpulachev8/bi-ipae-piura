SELECT dimc.iddimcliente, dimp.iddimproducto, dimf.iddimfecha, dp.cantidad, p.preciototal
FROM Tabla_Pedido As p inner join Tabla_DetallePedido dp on (p.idpedido = dp.idpedido)
							  inner join datamartTeczone.dbo.DimProducto dimp on (dimp.idproducto = dp.idproducto)
							  inner join datamartTeczone.dbo.DimCliente dimc on (dimc.idcliente = p.idcliente)
							  inner join datamartTeczone.dbo.DimFecha dimf on (dimf.fecha = CONVERT (DATE, p.fechapedido))