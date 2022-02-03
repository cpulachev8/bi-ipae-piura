--Query para poblar Cliente
SELECT c.ClienteId, c.Nombre, c.Apellidos, C.NumeroDoc FROM CLIENTE c

--Query para poblar Empleado
SELECT e.EmpleadoId, e.Nombre, e.Apellidos, tp.Cargo
FROM EMPLEADO e, TIPO_EMPLEADO tp
WHERE tp.TipoEmpleadoId = e.TipoEmpleadoId

--Inner join Empleado
SELECT e.EmpleadoId, e.Nombre, e.Apellidos, te.Cargo
FROM EMPLEADO e
INNER JOIN TIPO_EMPLEADO te ON te.TipoEmpleadoId = e.TipoEmpleadoId

--Query para poblar Habitacion
SELECT h.HabitacionId, h.NumeroHabitacion, th.Tipo
FROM HABITACION h, TIPO_HABITACION th
WHERE h.TipoHabitacionId = th.TipoHabitacionId

--Inner join Habitacion
SELECT h.HabitacionId, h.NumeroHabitacion, th.Tipo
FROM HABITACION h
INNER JOIN TIPO_HABITACION th ON h.TipoHabitacionId = th.TipoHabitacionId

--Query para poblar TIEMPO
SELECT DISTINCT Fecha_entrada, YEAR(ea.Fecha_entrada) Año, MONTH(ea.Fecha_entrada) Mes, DAY(ea.Fecha_entrada) Dia
FROM ESTANCIA_ALQUILER ea

--Query para poblar HECHOS

SELECT dc.IdDimCliente, de.IdDimEmpleado, dh.IdDimHabitacion, dt.IdDimTiempo, SUM(co.Monto_Total) MontoPago
FROM COMPROBANTE co
INNER JOIN ESTANCIA_ALQUILER ea ON co.Estancia_AlquilerId = ea.Estancia_AlquilerId
INNER JOIN HABITACION h ON ea.HabitacionId = h.HabitacionId
INNER JOIN DataMartHospedaje.dbo.DIMCLIENTE dc ON co.ClienteId = dc.IdCliente
INNER JOIN DataMartHospedaje.dbo.DIMEMPLEADO de ON co.EmpleadoId = de.IdEmpleado
INNER JOIN DataMartHospedaje.dbo.DIMHABITACION dh on h.HabitacionId = dh.IdHabitacion
INNER JOIN DataMartHospedaje.dbo.DIMTIEMPO dt ON ea.Fecha_entrada = dt.Fecha
GROUP BY dc.IdDimCliente, de.IdDimEmpleado, dh.IdDimHabitacion, dt.IdDimTiempo

