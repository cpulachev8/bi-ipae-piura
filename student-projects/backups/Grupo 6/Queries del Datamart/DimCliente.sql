select DISTINCT cli.idcliente, td.descripcion As 'Tipo de documento', cli.numerodocumento As 'Numero de documento', cli.nombre As Nombre,
cli.apellidos As 'Apellidos', cli.telefono As 'Numero de Telefono', cli.email As 'Email'
from Tabla_Cliente cli  INNER JOIN Tabla_TipoDocumento td on (cli.iddocumento=td.iddocumento)