CREATE DATABASE [HospedajeFantasia]

USE [HospedajeFantasia]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NULL,
	[NumeroDoc] [varchar](50) NOT NULL,
	[RazonSocial] [varchar](25) NOT NULL,
	[TipoDocId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPROBANTE]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPROBANTE](
	[ComprobanteId] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[ModoPagoId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[Estancia_AlquilerId] [int] NOT NULL,
	[Monto_Total] [int] NOT NULL,
	[Fecha_Emision] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ComprobanteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Edad] [varchar](50) NOT NULL,
	[RazonSocial] [varchar](20) NULL,
	[TipoEmpleadoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTANCIA_ALQUILER]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTANCIA_ALQUILER](
	[Estancia_AlquilerId] [int] IDENTITY(1,1) NOT NULL,
	[MontoPago] [int] NOT NULL,
	[Fecha_entrada] [date] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[HabitacionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Estancia_AlquilerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HABITACION]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HABITACION](
	[HabitacionId] [int] IDENTITY(1,1) NOT NULL,
	[NumeroHabitacion] [varchar](50) NOT NULL,
	[TipoHabitacionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HabitacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODO_PAGO]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODO_PAGO](
	[ModoPagoId] [int] IDENTITY(1,1) NOT NULL,
	[ModoPago] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModoPagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_DOC]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_DOC](
	[TipoDocId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_EMPLEADO]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_EMPLEADO](
	[TipoEmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [varchar](50) NOT NULL,
	[Salario] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoEmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_HABITACION]    Script Date: 01/02/2022 12:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_HABITACION](
	[TipoHabitacionId] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](25) NOT NULL,
	[Costo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoHabitacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENTE] ON 
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (1, N'Rodrigo', N'Corales Garcias', N'Piura', N'944851229', N'71586203', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (2, N'Mario', N'Casas Lamas', N'Sullana', N'963569851', N'03801256', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (3, N'Sindy', N'Lopez Zapata', N'Piura', N'933658962', N'03853625', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (4, N'Nanci', N'Ramirez Vasquez', N'Piura', N'933269865', N'495625369', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (5, N'Alex', N'Medina Bravo', N'Catacaos', N'996528697', N'499105021', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (6, N'Katherine', N'Garcia Fiestas', N'Trujillo', N'933201546', N'03825369', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (7, N'Camila', N'Cortes Querevalu', N'Lima', N'998969299', N'40651526', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (8, N'Samuel', N'Medina Alban', N'Talara', N'933447070', N'719915263', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (9, N'Rosa', N'Alvares Silva', N'Piura', N'996959897', N'080120011523', N'F', 3)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (10, N'Bertha', N'Caceres Zavala', N'Lima', N'996352610', N'656396589', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (11, N'Adan', N'Medina Pingo', N'Talara', N'997130160', N'150119720748', N'M', 3)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (12, N'Brenda', N'Fuentes Peña', N'Talara', N'996515236', N'454125638962', N'F', 3)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (13, N'Ana', N'Lagos Palacios', N'Talara', N'996523130', N'245199906050', N'F', 3)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (14, N'Junior', N'Lopez Castillo', N'Lima', N'933447856', N'10719720748', N'M', 4)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (15, N'Frank', N'Gomez Peralta', N'Sullana', N'996447875', N'2881125636985', N'M', 2)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (16, N'Daniela', N'Gonzalez Diaz', N'Lima', N'933698523', N'03835698', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (17, N'Zulma', N'Rivera Benavides', N'Trujillo', N'996523610', N'10072361259', N'F', 4)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (18, N'Maria', N'Portillo Vinces', N'Trujillo', N'998517305', N'45891563', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (19, N'Viviana', N'Gomez Pulache', N'Piura', N'996215479', N'101199615963', N'F', 2)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (20, N'Luis', N'Cruz Nima', N'Sullana', N'933445696', N'112499812563', N'M', 3)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (21, N'Jose', N'Rivera Alburqueque', N'Sullana', N'98563214', N'654195615632', N'M', 3)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (22, N'Celeste', N'Medina Lazo', N'Piura', N'931706730', N'564355815963', N'F', 2)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (23, N'Alejandro', N'Fuentes Guevara', N'Sullana', N'999478563', N'03815987', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (24, N'Roger', N'Cruz Campos', N'Piura', N'931758962', N'45950623', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (25, N'Fernando', N'Alvarez Cruz', N'Piura', N'997301258', N'03805263', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (26, N'Melvin', N'Alvarez Cruz', N'Piura', N'99856623', N'70304532', N'M', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (27, N'Marco', N'Santos Alamo', N'Sullana', N'933259687', N'10038102596', N'M', 4)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (28, N'Isabel', N'Manzanares Oliva', N'Piura', N'931758695', N'10431596196', N'F', 4)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (29, N'Katyy', N'Andrade Ramos', N'Sullana', N'998757544', N'718512356', N'F', 1)
GO
INSERT [dbo].[CLIENTE] ([ClienteId], [Nombre], [Apellidos], [Ciudad], [Telefono], [NumeroDoc], [RazonSocial], [TipoDocId]) VALUES (30, N'Josue', N'Padilla Ruiz', N'Piura', N'933698523', N'038212396', N'M', 1)
GO
SET IDENTITY_INSERT [dbo].[CLIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[COMPROBANTE] ON 
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (1, 1, 2, 7, 1, 80, CAST(N'2022-01-26' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (2, 2, 1, 6, 2, 50, CAST(N'2021-03-20' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (3, 3, 2, 6, 3, 100, CAST(N'2021-01-25' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (4, 3, 2, 6, 4, 50, CAST(N'2021-01-25' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (5, 4, 1, 7, 5, 80, CAST(N'2021-03-15' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (6, 5, 1, 6, 6, 240, CAST(N'2021-10-20' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (7, 6, 2, 7, 7, 80, CAST(N'2021-11-21' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (8, 7, 4, 6, 8, 80, CAST(N'2021-09-15' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (9, 8, 1, 7, 9, 100, CAST(N'2021-10-13' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (10, 9, 1, 7, 10, 50, CAST(N'2021-04-04' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (11, 10, 2, 6, 11, 100, CAST(N'2021-07-11' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (12, 11, 4, 6, 12, 90, CAST(N'2021-04-25' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (13, 12, 1, 6, 13, 90, CAST(N'2021-10-13' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (14, 13, 3, 6, 14, 50, CAST(N'2021-03-29' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (15, 14, 3, 7, 15, 80, CAST(N'2021-07-02' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (16, 15, 3, 7, 16, 120, CAST(N'2021-02-28' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (17, 15, 3, 6, 17, 100, CAST(N'2021-02-28' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (18, 15, 3, 7, 18, 270, CAST(N'2021-02-28' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (19, 16, 2, 6, 19, 50, CAST(N'2021-12-16' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (20, 17, 2, 6, 20, 120, CAST(N'2021-06-23' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (21, 18, 1, 7, 21, 120, CAST(N'2021-08-13' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (22, 19, 4, 6, 22, 50, CAST(N'2021-03-15' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (23, 20, 3, 6, 23, 50, CAST(N'2021-08-18' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (24, 21, 3, 7, 24, 80, CAST(N'2021-12-29' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (25, 21, 3, 7, 25, 100, CAST(N'2021-12-29' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (26, 22, 2, 7, 26, 160, CAST(N'2021-12-31' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (27, 23, 1, 6, 27, 90, CAST(N'2021-07-08' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (28, 24, 1, 6, 28, 80, CAST(N'2021-05-08' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (29, 25, 4, 6, 29, 160, CAST(N'2021-04-10' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (30, 26, 3, 6, 30, 50, CAST(N'2021-03-16' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (31, 27, 3, 7, 31, 80, CAST(N'2021-05-05' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (32, 27, 3, 7, 32, 80, CAST(N'2021-05-05' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (33, 27, 3, 7, 33, 80, CAST(N'2021-05-05' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (34, 28, 1, 6, 34, 50, CAST(N'2021-07-03' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (35, 29, 2, 6, 35, 50, CAST(N'2021-01-10' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (36, 30, 4, 6, 36, 320, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (37, 30, 4, 7, 37, 300, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (38, 30, 2, 6, 38, 160, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (39, 30, 1, 6, 39, 80, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[COMPROBANTE] ([ComprobanteId], [ClienteId], [ModoPagoId], [EmpleadoId], [Estancia_AlquilerId], [Monto_Total], [Fecha_Emision]) VALUES (40, 30, 3, 7, 40, 200, CAST(N'2021-03-17' AS Date))
GO
SET IDENTITY_INSERT [dbo].[COMPROBANTE] OFF
GO
SET IDENTITY_INSERT [dbo].[EMPLEADO] ON 
GO
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [RazonSocial], [TipoEmpleadoId]) VALUES (1, N'Cesar', N'Luna Ruiz', N'48', N'M', 1)
GO
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [RazonSocial], [TipoEmpleadoId]) VALUES (2, N'Mayra', N'Gomez Sosa', N'32', N'F', 2)
GO
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [RazonSocial], [TipoEmpleadoId]) VALUES (3, N'Rolando', N'Garcia Gomes', N'30', N'M', 3)
GO
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [RazonSocial], [TipoEmpleadoId]) VALUES (4, N'Michel', N'Torres Mena', N'27', N'M', 3)
GO
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [RazonSocial], [TipoEmpleadoId]) VALUES (5, N'Laura', N'Castillo Lopez', N'41', N'F', 4)
GO
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [RazonSocial], [TipoEmpleadoId]) VALUES (6, N'Daniel', N'Fernandez Valdes', N'28', N'M', 5)
GO
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [RazonSocial], [TipoEmpleadoId]) VALUES (7, N'Isabel', N'Alvarez Ruiz', N'33', N'F', 5)
GO
SET IDENTITY_INSERT [dbo].[EMPLEADO] OFF
GO
SET IDENTITY_INSERT [dbo].[ESTANCIA_ALQUILER] ON 
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (1, 80, CAST(N'2022-01-25' AS Date), CAST(N'2022-01-26' AS Date), 8)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (2, 50, CAST(N'2021-03-20' AS Date), CAST(N'2021-03-21' AS Date), 2)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (3, 100, CAST(N'2021-01-25' AS Date), CAST(N'2021-01-27' AS Date), 3)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (4, 50, CAST(N'2021-01-25' AS Date), CAST(N'2021-01-26' AS Date), 14)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (5, 80, CAST(N'2021-03-15' AS Date), CAST(N'2021-03-16' AS Date), 38)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (6, 240, CAST(N'2021-10-20' AS Date), CAST(N'2021-10-23' AS Date), 10)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (7, 80, CAST(N'2021-11-21' AS Date), CAST(N'2021-11-22' AS Date), 9)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (8, 80, CAST(N'2021-09-15' AS Date), CAST(N'2021-09-16' AS Date), 10)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (9, 100, CAST(N'2021-10-13' AS Date), CAST(N'2021-10-15' AS Date), 13)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (10, 50, CAST(N'2021-04-04' AS Date), CAST(N'2021-04-05' AS Date), 14)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (11, 100, CAST(N'2021-07-11' AS Date), CAST(N'2021-07-13' AS Date), 21)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (12, 90, CAST(N'2021-04-25' AS Date), CAST(N'2021-04-26' AS Date), 27)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (13, 90, CAST(N'2021-10-13' AS Date), CAST(N'2021-10-14' AS Date), 7)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (14, 50, CAST(N'2021-03-29' AS Date), CAST(N'2021-03-30' AS Date), 4)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (15, 80, CAST(N'2021-07-02' AS Date), CAST(N'2021-07-03' AS Date), 31)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (16, 120, CAST(N'2021-02-28' AS Date), CAST(N'2021-03-01' AS Date), 42)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (17, 100, CAST(N'2021-02-28' AS Date), CAST(N'2021-03-02' AS Date), 2)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (18, 270, CAST(N'2021-02-28' AS Date), CAST(N'2021-03-02' AS Date), 34)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (19, 50, CAST(N'2021-12-16' AS Date), CAST(N'2021-12-17' AS Date), 23)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (20, 120, CAST(N'2021-06-23' AS Date), CAST(N'2021-06-24' AS Date), 20)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (21, 120, CAST(N'2021-08-13' AS Date), CAST(N'2021-08-14' AS Date), 12)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (22, 50, CAST(N'2021-03-15' AS Date), CAST(N'2021-03-16' AS Date), 13)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (23, 50, CAST(N'2021-08-18' AS Date), CAST(N'2021-08-19' AS Date), 13)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (24, 80, CAST(N'2021-12-29' AS Date), CAST(N'2021-12-30' AS Date), 32)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (25, 100, CAST(N'2021-12-29' AS Date), CAST(N'2021-12-31' AS Date), 5)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (26, 160, CAST(N'2021-12-31' AS Date), CAST(N'2022-01-02' AS Date), 9)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (27, 90, CAST(N'2021-07-08' AS Date), CAST(N'2021-07-09' AS Date), 36)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (28, 80, CAST(N'2021-05-08' AS Date), CAST(N'2021-05-09' AS Date), 39)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (29, 160, CAST(N'2021-04-10' AS Date), CAST(N'2021-04-12' AS Date), 30)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (30, 50, CAST(N'2021-03-16' AS Date), CAST(N'2021-03-17' AS Date), 2)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (31, 80, CAST(N'2021-05-05' AS Date), CAST(N'2021-05-06' AS Date), 31)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (32, 80, CAST(N'2021-05-05' AS Date), CAST(N'2021-05-06' AS Date), 37)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (33, 80, CAST(N'2021-05-05' AS Date), CAST(N'2021-05-06' AS Date), 8)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (34, 50, CAST(N'2021-07-03' AS Date), CAST(N'2021-07-04' AS Date), 22)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (35, 50, CAST(N'2021-01-10' AS Date), CAST(N'2021-01-11' AS Date), 2)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (36, 320, CAST(N'2021-03-17' AS Date), CAST(N'2021-03-21' AS Date), 45)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (37, 300, CAST(N'2021-03-17' AS Date), CAST(N'2021-03-23' AS Date), 13)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (38, 160, CAST(N'2021-03-17' AS Date), CAST(N'2021-03-19' AS Date), 40)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (39, 80, CAST(N'2021-03-17' AS Date), CAST(N'2021-03-18' AS Date), 38)
GO
INSERT [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId], [MontoPago], [Fecha_entrada], [Fecha_Salida], [HabitacionId]) VALUES (40, 200, CAST(N'2021-03-17' AS Date), CAST(N'2021-03-21' AS Date), 5)
GO
SET IDENTITY_INSERT [dbo].[ESTANCIA_ALQUILER] OFF
GO
SET IDENTITY_INSERT [dbo].[HABITACION] ON 
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (1, N'101', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (2, N'102', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (3, N'103', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (4, N'104', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (5, N'105', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (6, N'106', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (7, N'107', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (8, N'108', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (9, N'109', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (10, N'110', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (11, N'111', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (12, N'112', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (13, N'201', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (14, N'202', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (15, N'203', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (16, N'204', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (17, N'205', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (18, N'206', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (19, N'207', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (20, N'208', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (21, N'301', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (22, N'302', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (23, N'303', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (24, N'304', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (25, N'305', 1)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (26, N'306', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (27, N'307', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (28, N'308', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (29, N'309', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (30, N'310', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (31, N'311', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (32, N'312', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (33, N'401', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (34, N'402', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (35, N'403', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (36, N'404', 2)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (37, N'405', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (38, N'406', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (39, N'407', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (40, N'408', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (41, N'409', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (42, N'410', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (43, N'411', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (44, N'412', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (45, N'501', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (46, N'502', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (47, N'503', 3)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (48, N'504', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (49, N'505', 4)
GO
INSERT [dbo].[HABITACION] ([HabitacionId], [NumeroHabitacion], [TipoHabitacionId]) VALUES (50, N'506', 4)
GO
SET IDENTITY_INSERT [dbo].[HABITACION] OFF
GO
SET IDENTITY_INSERT [dbo].[MODO_PAGO] ON 
GO
INSERT [dbo].[MODO_PAGO] ([ModoPagoId], [ModoPago]) VALUES (1, N'Efectivo')
GO
INSERT [dbo].[MODO_PAGO] ([ModoPagoId], [ModoPago]) VALUES (2, N'Tarjeta Debito')
GO
INSERT [dbo].[MODO_PAGO] ([ModoPagoId], [ModoPago]) VALUES (3, N'Tarjeta Credito')
GO
INSERT [dbo].[MODO_PAGO] ([ModoPagoId], [ModoPago]) VALUES (4, N'Transferencia Bancaria')
GO
SET IDENTITY_INSERT [dbo].[MODO_PAGO] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPO_DOC] ON 
GO
INSERT [dbo].[TIPO_DOC] ([TipoDocId], [Descripcion]) VALUES (1, N'DNI')
GO
INSERT [dbo].[TIPO_DOC] ([TipoDocId], [Descripcion]) VALUES (2, N'Pasaporte')
GO
INSERT [dbo].[TIPO_DOC] ([TipoDocId], [Descripcion]) VALUES (3, N'Carnet de Extranjeria')
GO
INSERT [dbo].[TIPO_DOC] ([TipoDocId], [Descripcion]) VALUES (4, N'RUC')
GO
SET IDENTITY_INSERT [dbo].[TIPO_DOC] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPO_EMPLEADO] ON 
GO
INSERT [dbo].[TIPO_EMPLEADO] ([TipoEmpleadoId], [Cargo], [Salario]) VALUES (1, N'Gerente', N'2200')
GO
INSERT [dbo].[TIPO_EMPLEADO] ([TipoEmpleadoId], [Cargo], [Salario]) VALUES (2, N'Administrador', N'1800')
GO
INSERT [dbo].[TIPO_EMPLEADO] ([TipoEmpleadoId], [Cargo], [Salario]) VALUES (3, N'Botones', N'1200')
GO
INSERT [dbo].[TIPO_EMPLEADO] ([TipoEmpleadoId], [Cargo], [Salario]) VALUES (4, N'Conserje', N'1100')
GO
INSERT [dbo].[TIPO_EMPLEADO] ([TipoEmpleadoId], [Cargo], [Salario]) VALUES (5, N'Recepcionista', N'1500')
GO
SET IDENTITY_INSERT [dbo].[TIPO_EMPLEADO] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPO_HABITACION] ON 
GO
INSERT [dbo].[TIPO_HABITACION] ([TipoHabitacionId], [Tipo], [Costo]) VALUES (1, N'Individual', N'50')
GO
INSERT [dbo].[TIPO_HABITACION] ([TipoHabitacionId], [Tipo], [Costo]) VALUES (2, N'Doble', N'90')
GO
INSERT [dbo].[TIPO_HABITACION] ([TipoHabitacionId], [Tipo], [Costo]) VALUES (3, N'Matrimonial', N'80')
GO
INSERT [dbo].[TIPO_HABITACION] ([TipoHabitacionId], [Tipo], [Costo]) VALUES (4, N'Triple', N'120')
GO
SET IDENTITY_INSERT [dbo].[TIPO_HABITACION] OFF
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TIPO_DOC] ([TipoDocId])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([ClienteId])
REFERENCES [dbo].[CLIENTE] ([ClienteId])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[EMPLEADO] ([EmpleadoId])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([Estancia_AlquilerId])
REFERENCES [dbo].[ESTANCIA_ALQUILER] ([Estancia_AlquilerId])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([ModoPagoId])
REFERENCES [dbo].[MODO_PAGO] ([ModoPagoId])
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD FOREIGN KEY([TipoEmpleadoId])
REFERENCES [dbo].[TIPO_EMPLEADO] ([TipoEmpleadoId])
GO
ALTER TABLE [dbo].[ESTANCIA_ALQUILER]  WITH CHECK ADD FOREIGN KEY([HabitacionId])
REFERENCES [dbo].[HABITACION] ([HabitacionId])
GO
ALTER TABLE [dbo].[HABITACION]  WITH CHECK ADD FOREIGN KEY([TipoHabitacionId])
REFERENCES [dbo].[TIPO_HABITACION] ([TipoHabitacionId])
GO
