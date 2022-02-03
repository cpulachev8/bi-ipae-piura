select DISTINCT prod.idproducto, prod.nombreproducto As Nombre, prod.idproveedor As Proveedor,
prod.idcategoria As Categoria,  prod.precio AS Precio, prod.descripcion As Descripcion
from Tabla_Producto prod INNER JOIN Categoria cat ON (prod.idcategoria=cat.idcategoria)