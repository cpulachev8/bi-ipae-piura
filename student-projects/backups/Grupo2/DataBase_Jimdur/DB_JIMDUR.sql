USE [DB_JIMDUR]
GO
/****** Object:  Table [dbo].[ARTICULO]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICULO](
	[idarticulo] [int] NOT NULL,
	[idcategoria] [int] NOT NULL,
	[codigo] [varchar](50) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[stock] [int] NOT NULL,
	[descripcion] [varchar](250) NOT NULL,
	[imagen] [varchar](50) NOT NULL,
	[condicion] [bit] NOT NULL,
 CONSTRAINT [pk_idarticulo] PRIMARY KEY CLUSTERED 
(
	[idarticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[id_categoria] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[condicion] [bit] NOT NULL,
 CONSTRAINT [pk_idcategoria] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[idcliente] [int] NOT NULL,
	[tipo_cliente] [varchar](20) NULL,
	[nombre] [varchar](50) NULL,
	[tipo_documento] [varchar](50) NULL,
	[num_documento] [varchar](50) NULL,
	[direccion] [varchar](100) NULL,
	[departamento] [varchar](50) NULL,
	[provincia] [varchar](50) NULL,
	[distrito] [varchar](50) NULL,
	[telefono] [varchar](9) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [pk_idcliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPRA]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPRA](
	[idcompra] [int] NOT NULL,
	[idproveedor] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[tipo_comprobante] [varchar](20) NULL,
	[serie_comprobante] [varchar](7) NULL,
	[num_comprobante] [varchar](50) NULL,
	[fecha_hora] [datetime] NULL,
	[impuesto] [float] NULL,
	[total_compra] [float] NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [pk_idcompra] PRIMARY KEY CLUSTERED 
(
	[idcompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_COMPRA]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_COMPRA](
	[iddetalle_compras] [int] NOT NULL,
	[idcompra] [int] NOT NULL,
	[idarticulo] [int] NOT NULL,
	[cantidad] [int] NULL,
	[precio_compra] [float] NULL,
	[precio_venta] [float] NULL,
 CONSTRAINT [pk_iddetalle_compras] PRIMARY KEY CLUSTERED 
(
	[iddetalle_compras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[iddetalle_venta] [int] NOT NULL,
	[idventa] [int] NOT NULL,
	[idarticulo] [int] NOT NULL,
	[cantidad] [int] NULL,
	[precio_venta] [float] NULL,
	[descuento] [float] NULL,
 CONSTRAINT [pk_iddetalle_venta] PRIMARY KEY CLUSTERED 
(
	[iddetalle_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISO]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISO](
	[idpermiso] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [pk_idpermiso] PRIMARY KEY CLUSTERED 
(
	[idpermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[idproveedor] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[ruc] [char](11) NULL,
	[direccion] [varchar](50) NULL,
	[correo] [varchar](30) NULL,
	[telefono] [varchar](9) NULL,
	[razon_social] [varchar](100) NULL,
 CONSTRAINT [pk_idproveedor] PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[idusuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[tipo_documento] [varchar](20) NULL,
	[num_documento] [varchar](20) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [char](9) NULL,
	[email] [varchar](50) NULL,
	[cargo] [varchar](15) NULL,
	[login] [varchar](20) NULL,
	[clave] [varchar](50) NULL,
	[condicion] [bit] NULL,
 CONSTRAINT [pk_idusuario] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO_PERMISO]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO_PERMISO](
	[idusuario_permiso] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[idpermiso] [int] NULL,
 CONSTRAINT [pk_idusuario_permiso] PRIMARY KEY CLUSTERED 
(
	[idusuario_permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 21/12/2021 23:49:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[idventa] [int] NOT NULL,
	[idcliente] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[tipo_comprobante] [varchar](20) NULL,
	[serie_comprobante] [varchar](7) NULL,
	[num_comprobante] [varchar](10) NULL,
	[fecha_hora] [datetime] NULL,
	[impuesto] [float] NULL,
	[total_venta] [float] NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [pk_idventa] PRIMARY KEY CLUSTERED 
(
	[idventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (1, 1, N'00000974', N'ACCESORIOS DE CARBURADOR CG125/ C/FLOTADOR RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (2, 1, N'00001580', N'ACCESORIOS DE CARBURADOR CG150 / C/FLOTADOR RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (3, 2, N'00000009', N'ACEITE 2 TIEMPOS CASTROL - COJIN', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (4, 1, N'00000258', N'ACEITE BJR 25W60', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (5, 2, N'00000004', N'ACEITE DE TRANSMISION 140 VISTONY', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (6, 2, N'00000003', N'ACEITE MOBIL 4T 25W50', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (7, 2, N'00000007', N'ACEITE MOTUL 5100 15W50', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (8, 2, N'00000005', N'ACEITE SHELL 50 MONOGRADO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (9, 2, N'00000002', N'ACEITE SHELL HELIX 20W50', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (10, 1, N'00000885', N'AGUA CON ACIDO PARA BATERIA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (11, 1, N'00000412', N'ALTERNADOR 125/150 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (12, 1, N'00000845', N'ALTERNADOR CG125 ULTRA (HONDA CHINA) KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (13, 1, N'00001160', N'AMORTIGUADOR POSTERIOR GL125 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (14, 1, N'00001597', N'ARRANCADOR CG250 9T - 14MM', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (15, 1, N'00001409', N'BAQUELITA DE CARBURADOR C110 BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (16, 1, N'00000853', N'BAQUELITA DE CARBURADOR CG150/125', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (17, 1, N'00000191', N'BARRA TELESCOPICA C110 WX SOLAS RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (18, 1, N'00001353', N'BARRA TELESCOPICA GL125  SOLA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (19, 1, N'00001141', N'BARRA TELESCOPICA GL-125 PREMIER COMPLETA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (20, 1, N'00000678', N'BRAZO DE FRENO POST GL125 CROMADO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (21, 1, N'00000592', N'BRIDA DE CARBURADOR HONGJU CG125/150  CON PIN', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (22, 1, N'00000195', N'BUJE DE BOCAMASA GL-125', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (23, 3, N'00000106', N'BUJIA DP8EA-9  CG-125/GL NGK', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (24, 1, N'00000433', N'CABEZAL COMPLETO CG125 S/EJE DE LEVAS', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (25, 1, N'00000979', N'CABEZAL COMPLETO CG150  WX150 BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (26, 3, N'20210827100237', N'CABEZAL COMPLETO DAX 70 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (27, 1, N'00000605', N'CABLE DE ACELERADOR BROSS/GY150 RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (28, 1, N'00001289', N'CABLE DE ACELERADOR CARGUERO 2 CABLES RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (29, 1, N'00000181', N'CABLE DE ACELERADOR GL/CG HONGJU', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (30, 1, N'00001143', N'CABLE DE EMBRAGUE CARGUERO BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (31, 1, N'00000229', N'CABLE DE EMBRAGUE GL-125 HONGJU', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (32, 1, N'00001144', N'CABLE DE FRENO DELANTERO CARGUERO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (33, 1, N'00000252', N'CABLE DE FRENO GL-125 SUMOTO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (34, 1, N'00000873', N'CAJA DE CAMBIO WX 150 RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (35, 1, N'00000872', N'CAJA DE RETROCESO CARGUERO 17MM BJR GRISS', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (36, 3, N'00000028', N'CAMARA DURO 300-18 POST', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (37, 1, N'00001537', N'CANDADO DE CADENA 428', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (38, 1, N'00001324', N'CAPUCHON DE BUJIA FZ16 BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (39, 1, N'00000255', N'CAPUCHON DE BUJIA RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (40, 1, N'00001595', N'CAPUCHON DE BUJIA UNICORD/SCOOTER NEGRA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (41, 1, N'00001346', N'CARBURADOR CG250/300 BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (42, 1, N'00000982', N'CATALINA 36T MR-428', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (43, 1, N'00001305', N'CATALINA 43T YAMAHA SFX', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (44, 1, N'00000892', N'CDI CARGUERO TRIFASICO 6 SALIDAS KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (45, 1, N'00000850', N'CHANCHITO DE ARRANQUE BJR/TVR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (46, 1, N'00001146', N'CHAPA DE CONTACTO GL-125 BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (47, 1, N'00000379', N'CHAPA DE CONTACTO MODEL. ZS BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (48, 1, N'00001389', N'CHAPA DE CONTACTO WAVE 110 4 CABLES BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (49, 3, N'20210913175806', N'CIGUEÑAL C100 COMPLETO CHINAS - KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (50, 1, N'00001178', N'CIGUEÑAL CG-150 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (51, 1, N'00001269', N'CIGUEÑAL SCOOTER/GY6 COMPLETO KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (52, 3, N'00000107', N'CILINDRO COMPLETO CG -150 TVR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (53, 1, N'00001138', N'CILINDRO COMPLETO CG150 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (54, 1, N'00001352', N'CILINDRO COMPLETO CG250 67 KIGCOL AIRE', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (55, 1, N'00001246', N'CILINDRO COMPLETO CG250 KIGCOL ENFRIADO POR AGUA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (56, 1, N'00000924', N'CILINDRO COMPLETO SCOOTER 125 RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (57, 1, N'00001270', N'CILINDRO COMPLETO SCOOTER 150 TOMOTO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (58, 1, N'00000580', N'CINTA REFLECTIVA 3M 1/2 METRO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (59, 1, N'00001240', N'CLAXON CG125  HORN', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (60, 1, N'00000425', N'COMANDO DERECHO GL125 PREMIER', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (61, 1, N'00000945', N'COPA CENTRIFUGA CG-125/150 KIGCOL-TVR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (62, 3, N'00000813', N'CREMALLERA COMPLETA 110 RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (63, 1, N'00001022', N'CREMALLERA COMPLETA CG250 18T - 73T KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (64, 1, N'00001000', N'CREMALLERA COMPLETA CG-250 6 PINES 7 DISCOS 70T RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (65, 1, N'00000721', N'EJE DE CAMBIO COMPLETO CG-125/150/200 C/PUNTA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (66, 1, N'00000706', N'EJE DE TRAPECIO CB125 ACERADO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (67, 1, N'00000440', N'EJE POSTERIOR CG125 ACERADO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (68, 1, N'00000518', N'EJE POSTERIOR GL125', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (69, 1, N'00001463', N'EMPAQUE DE EMBRAGUE C110', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (70, 1, N'00000353', N'EMPAQUE DE TUBO DE ESCAPE BRONCE', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (71, 1, N'00000361', N'EMPAQUE DE VOLANTE C/ARRANCADOR AB MOTORS', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (72, 1, N'00000920', N'ESPARRAGO DE TUBO DE ESCAPE  M6', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (73, 1, N'00001250', N'ESPARRAGO TUBO DE ESCAPE FURGON', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (74, 1, N'00000262', N'ESPEJO RETROVISOR WANXIN MR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (75, 1, N'00000273', N'FARO DIRECCIONAL GL BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (76, 1, N'00000283', N'FARO POSTERIOR C/DIRECCIONAL AMARILLO WX', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (77, 1, N'00001460', N'FARO POSTERIOR CARGUERO LED JMD', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (78, 1, N'00001039', N'FARO POSTERIOR STOP BICOLOR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (79, 1, N'00000277', N'FARO POSTERIOR STOP CG-125', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (80, 1, N'00000393', N'FILTRO DE ACEITE MALLA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (81, 1, N'00000403', N'FILTRO DE AIRE CARGUERO/FURGON RECTO RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (82, 1, N'00001257', N'FILTRO DE AIRE COMPLETO CARGUERO CURVO KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (83, 1, N'00000991', N'FLASHER C/SONIDO SUMOTO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (84, 1, N'00001071', N'FOCO DELANTERO HALOGENO H4 12V35/35 BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (85, 1, N'00000742', N'FUSIBLE DE UÑA 20A', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (86, 1, N'00000667', N'GRASA PEQUEÑA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (87, 1, N'00001126', N'GRIFO DE GASOLINA CG125/150 RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (88, 1, N'00000769', N'GRIFO DE GASOLINA HILO FINO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (89, 1, N'00000981', N'KIT EMPAQUE DE CABEZO CG150 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (90, 1, N'00001056', N'KIT EMPAQUE DE CABEZO CG-200 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (91, 1, N'00000358', N'KIT EMPAQUE DE MOTOR CG-125 KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (92, 1, N'00000976', N'KIT PERNOS CATALINA BUJE DE JEBE', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (93, 1, N'00001215', N'KIT PERNOS CATALINA WX', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (94, 1, N'00000321', N'KIT RETEN MOTOR WILLY BUSH', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (95, 1, N'00001090', N'LIMPIA CARBURADOR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (96, 1, N'00000382', N'LIQUIDO DE FRENO 8 ONZAS VISTONI', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (97, 1, N'00001111', N'LIQUIDO DE FRENO VECSOL 4 ONZAS', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (98, 1, N'00000460', N'LLANTA DE CARGUERO 500-12 KINGSTONE TRACTOR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (99, 1, N'20210622101017', N'MANGUERA DE GASOLINA POR METRO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (100, 1, N'00000870', N'MANUBRIO GL125 C/TUBO DE ACELERADOR BJR', 100, N'-', N'-', 1)
GO
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (101, 1, N'00001329', N'OJO DE AGUILA ROJO/AZUL/BLANCO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (102, 1, N'00000596', N'ORRIN DE TAPA DE ACEITE KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (103, 1, N'00001412', N'PASTILLA DE FRENO C110 GY150/200 TOMOTO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (104, 3, N'00000035', N'PASTILLA DE FRENO GY200 DELANT REDONDA 3 ESTRELLAS KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (105, 1, N'00000358', N'PEDAL DE ARRANQUE', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (106, 1, N'00000628', N'PEDAL DE CAMBIO BROSS/GY RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (107, 1, N'00000941', N'PEDAL DE CAMBIO PIN LARGO CARGUERO KIGCOL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (108, 1, N'00001029', N'PEDAL DE FRENO C-110', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (109, 1, N'00001027', N'PEDAL DE FRENO GL', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (110, 1, N'00000654', N'PINTURA SPRAY DORADO BRILLANTE', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (111, 1, N'00000655', N'PINTURA SPRAY NEGRO BRILLANTE', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (112, 1, N'00000984', N'PIÑON DE ARRASTRE 14T C110 428 MR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (113, 1, N'00000760', N'RAMAL ELECTRICO FURGON PREMIER', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (114, 1, N'00000576', N'RETEN DE ARRASTRE (20-34-7)', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (115, 1, N'00001172', N'RODAJE HYZ 6302', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (116, 3, N'00000069', N'RODAJE SCP 6202', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (117, 1, N'00001198', N'RODAJE SCP 6302', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (118, 1, N'00000343', N'SILICONA LIQUIDA GRANDE KURSAWA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (119, 1, N'00000338', N'SILICONA LIQUIDA PEQUEÑA KURSAWA', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (120, 1, N'20210723171741', N'SOLDEMIX INSTATEO SUPER GLU', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (121, 1, N'00000921', N'SWICH DE FRENO', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (122, 1, N'00001549', N'TAPA DE ACEITE ECONOMICA BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (123, 1, N'00001171', N'TAPA DE TANQUE BROSS BJR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (124, 1, N'00001451', N'TAPABARRO DELANTERO C110 ROJO C/ACCESORIOS', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (125, 1, N'00001075', N'VENTIX COMPLETO CG200 20 PINES RCC', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (126, 1, N'00000509', N'ZAPATA DE FRENO  GL-125 TVR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (127, 1, N'00000942', N'ZAPATA DE FRENO DT-125 EDE', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (128, 1, N'00001115', N'ZAPATA DE FRENO DT-125 TVR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (129, 1, N'00001592', N'ZAPATA DE FRENO POST. 220 MM CARGUERO TVR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (130, 1, N'00001592', N'ZAPATA DE FRENO POST. 220 MM CARGUERO TVR', 100, N'-', N'-', 1)
INSERT [dbo].[ARTICULO] ([idarticulo], [idcategoria], [codigo], [nombre], [stock], [descripcion], [imagen], [condicion]) VALUES (131, 1, N'00000872', N'CAJA DE RETROCESO CARGUERO 20MM BJR GRISS', 100, N'-', N'-', 1)
GO
INSERT [dbo].[CATEGORIA] ([id_categoria], [nombre], [descripcion], [condicion]) VALUES (1, N'ACCESORIO', NULL, 1)
INSERT [dbo].[CATEGORIA] ([id_categoria], [nombre], [descripcion], [condicion]) VALUES (2, N'LUBRICANTE', NULL, 1)
INSERT [dbo].[CATEGORIA] ([id_categoria], [nombre], [descripcion], [condicion]) VALUES (3, N'REPUESTOS', NULL, 1)
GO
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (1, N'EMPRESA', N'A B MODULAR S.A.C.', N'RUC', N'20572134777', N'MZA. D01 LOTE. 08 INT. 03 URB. MONTE BELLO II ETAPA ', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (2, N'EMPRESA', N'ABAD JIMENEZ JUAN', N'RUC', N'10028613305', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (3, N'EMPRESA', N'ABAD NUÑEZ FRANKLIN', N'RUC', N'10464500222', N'Dirección  José Aguilar sontisteban Mz j lote 3 molina ll', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (4, N'NATURAL', N'ABENDAÑO AGUILAR JACKS ARMANDO', N'DNI', N'45745286', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (5, N'NATURAL', N'ABENDAÑO AGUILAR MARLY YASENIA', N'DNI', N'76931266', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (6, N'NATURAL', N'ABNER ROSILLO ABAD', N'DNI', N'73125067', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (7, N'NATURAL', N'ADANAQUE CALLE JESUS FRANCISCO', N'DNI', N'41929837', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (8, N'NATURAL', N'AGUA EXITO', N'DNI', N'5', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (9, N'NATURAL', N'ALBITES ESPINOZA VICTOR JONATAN', N'DNI', N'76376133', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (10, N'NATURAL', N'ALBURQUEQUE HERRERA LUZ MARIA', N'DNI', N'3640013', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (11, N'EMPRESA', N'ALDIZA CONSTRUCTORES SOCIEDAD ANÓNIMA CERRADA', N'RUC', N'20607818950', N'CAL. LOS ALAMOS LT. 32 MZ. S A.H. CONSUELO DE VELASCO ', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (12, N'EMPRESA', N'ALIMENTOS ANDINOS P & A E.I.R.L.', N'RUC', N'20601548764', N'CAL.PAIMAS ALTO NRO. 06 CAS. PAIMAS ALTO', N'PIURA', N'AYABACA', N'PAIMAS', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (13, N'EMPRESA', N'ALTAMAREA SEAFOOD E.I.R.L.', N'RUC', N'20604117012', N'CAL. 37 LT. 58 MZ. A2 URB. VILLA PLANICIE - LOS PORT', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (14, N'NATURAL', N'ALVARADO CHECA ROBERTO CARLOS', N'DNI', N'3373307', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (15, N'NATURAL', N'ANICETO CORDOVA ERIKA', N'DNI', N'80391774', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (16, N'EMPRESA', N'APOLO CERNA LABY HELENN', N'RUC', N'10401456037', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (17, N'EMPRESA', N'AREVALO ARROYO ISMAEL ALBERTO', N'RUC', N'10027655543', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (18, N'NATURAL', N'ARTEMIO SANTOS', N'DNI', N'0', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (19, N'EMPRESA', N'AUGUSTO CARRASCO GONZALES EIRL', N'RUC', N'20605771352', N'MZA. X LOTE. 32 A.H. NUEVO AMANECER CON JESUS', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (20, N'EMPRESA', N'B2B PIURA E.I.R.L.', N'RUC', N'20602847838', N'AV. BOLOGNESI NRO. 266 DPTO. 301 - CENTRO DE PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (21, N'NATURAL', N'BALLADARES FLORES JUNIOR', N'DNI', N'70018918', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (22, N'NATURAL', N'BARCO HUAMAN DAVID FERNANDO', N'DNI', N'46324940', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (23, N'EMPRESA', N'BIENES Y SERVICIOS GENERALES ESTEFANY E.I.R.L.', N'RUC', N'20602642772', N'AV. SEPARADORA LT. 32 MZ. A'' A.H. LOS ANGELES II ETAPA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (24, N'EMPRESA', N'BURNEO SAAVEDRA LUIS FERNANDO', N'RUC', N'10026164996', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (25, N'EMPRESA', N'C & M CONSTRUCTORES Y MAQUINARIA SRL', N'RUC', N'20491705133', N'LT. 14 MZ. D A.H. UPIS LOS ANGELES', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (26, N'EMPRESA', N'CALLE AGUILAR LEWIS ROD', N'RUC', N'10475161616', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (27, N'NATURAL', N'CALLE CANGO RODOLFO', N'DNI', N'45123938', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (28, N'NATURAL', N'CAMIZAN RAMIREZ SEGUNDO JULIAN', N'DNI', N'47944932', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (29, N'NATURAL', N'CARHUAPOMA GARCIA RAUL', N'DNI', N'3884746', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (30, N'NATURAL', N'CARLOS MORE', N'DNI', N'11111211', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (31, N'NATURAL', N'CARMEN SILVIA JIMENEZ', N'DNI', N'27858829', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (32, N'NATURAL', N'CARMEN SOSA CARLOS AUGUSTO', N'DNI', N'80666849', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (33, N'EMPRESA', N'CARRANZA ALARCON LUIS GODOFREDO', N'RUC', N'10429320751', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (34, N'NATURAL', N'CARREÑO DELGADO LUIS ALBERTO', N'DNI', N'3368355', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (35, N'NATURAL', N'CASTILLO CALLE JULIO CESAR', N'DNI', N'41915598', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (36, N'EMPRESA', N'CASTILLO MURILLO FELIX SEGUNDO', N'RUC', N'10429716646', N'MZ B LT 01 INT 02 AH FATIMA', N'PIURA', N'PIURA', N'26 DE OCTUBRE', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (37, N'EMPRESA', N'CASTILLO RIJALBA SEGUNDO ANTONIO', N'RUC', N'10446089531', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (38, N'NATURAL', N'CASTRO NAVARRO MARIELLA ROSA ELIZABETH', N'DNI', N'41228369', N'asent. h. la molina etapa 1mz l lt. 24', N'PIURA', N'PIURA', N'26 DE OCTUBRE', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (39, N'EMPRESA', N'CENTRAL PERU S.A', N'RUC', N'20120545303', N'AV. AREQUIPA NRO. 2644 (FRENTE A CEPEBAN)', N'LIMA', N'LIMA', N'LINCE', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (40, N'EMPRESA', N'CERRO VEGAS ADAN', N'RUC', N'10026888684', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (41, N'NATURAL', N'CESAR MEDINA', N'DNI', N'12', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (42, N'NATURAL', N'CHANDUVI RIVAS WILFREDO', N'DNI', N'2810774', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (43, N'EMPRESA', N'CHANTA HUAMAN SEGUNDO GREGORIO', N'RUC', N'10451081506', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (44, N'NATURAL', N'CHAVEZ MORALES JHON YERAL', N'DNI', N'75069253', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (45, N'EMPRESA', N'CHERO NAVARRO EDITH NOEMI', N'RUC', N'10410595244', N'PIURA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (46, N'EMPRESA', N'CLASES DE MANEJO PIURA E.I.R.L.', N'RUC', N'20608442716', N'CAL. LOS EBANOS LT. 01 MZ. Y URB. MIRAFLORES', N'PIURA', N'PIURA', N'CASTILLA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (47, N'EMPRESA', N'COESTI S.A.', N'RUC', N'20127765279', N'AV. CIRCUNVALACION DEL CLUB G NRO. 134 URB. CLUB EL GOLF LOS INCAS ', N'LIMA', N'LIMA', N'SANTIAGO DE SURCO', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (48, N'EMPRESA', N'COMERCIAL & INVERSIONES LISBET EIRL', N'RUC', N'20526299699', N'JR. CALLAO NRO. 758 INT. 203  - PIURA CERCADO', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (49, N'EMPRESA', N'COMERCIALIZADORA COLAVI S.A.C.', N'RUC', N'20606764597', N'MZ. X2 LT. 11 A.H. LA MOLINA II', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
INSERT [dbo].[CLIENTE] ([idcliente], [tipo_cliente], [nombre], [tipo_documento], [num_documento], [direccion], [departamento], [provincia], [distrito], [telefono], [email]) VALUES (50, N'EMPRESA', N'COMERCIALIZADORA SAN MIGUEL DE PIURA EIRL', N'RUC', N'20484164208', N'MZA. A LOTE. 07 URB. LA ALBORADA', N'PIURA', N'PIURA', N'PIURA', NULL, NULL)
GO
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (1, 1, 8, 3, 19, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (2, 1, 7, 3, 27.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (3, 2, 87, 10, 5.4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (4, 2, 97, 8, 3.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (5, 2, 96, 8, 5.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (6, 2, 95, 4, 10.29, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (7, 2, 43, 4, 11.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (8, 3, 9, 6, 19, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (9, 3, 5, 12, 12, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (10, 3, 6, 6, 17.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (11, 3, 7, 6, 27.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (12, 4, 8, 1, 22, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (13, 5, 7, 2, 30, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (14, 5, 74, 1, 7.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (15, 5, 97, 1, 5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (16, 5, 84, 1, 5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (17, 6, 8, 1, 14, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (18, 7, 14, 3, 64.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (19, 7, 62, 3, 64, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (20, 7, 37, 100, 0.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (21, 7, 28, 6, 4.2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (22, 7, 48, 4, 12, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (23, 7, 26, 1, 194.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (24, 7, 57, 2, 60.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (25, 7, 49, 2, 73.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (26, 7, 25, 1, 260.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (27, 7, 47, 3, 14.2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (28, 8, 9, 6, 19.584, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (29, 9, 9, 5, 23, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (30, 10, 74, 1, 7.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (31, 11, 131, 3, 142, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (32, 12, 105, 1, 10, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (33, 13, 128, 10, 6.7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (34, 13, 126, 10, 6.7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (35, 13, 127, 10, 12.1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (36, 13, 11, 5, 24.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (37, 13, 13, 2, 71, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (38, 13, 46, 8, 12.3, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (39, 13, 45, 5, 8.7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (40, 13, 23, 10, 5.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (41, 13, 20, 10, 1.95, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (42, 13, 66, 5, 3.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (43, 13, 67, 5, 4.95, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (44, 13, 68, 5, 5.1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (45, 13, 72, 20, 0.69, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (46, 13, 59, 5, 4.95, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (47, 13, 33, 10, 4.2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (48, 13, 6, 24, 17.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (49, 13, 7, 12, 27.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (50, 14, 8, 24, 12.167, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (51, 15, 6, 2, 19, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (52, 15, 80, 1, 1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (53, 15, 88, 1, 6, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (54, 15, 70, 1, 1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (55, 16, 35, 1, 155, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (56, 16, 5, 3, 16.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (57, 16, 107, 1, 12, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (58, 16, 98, 2, 155, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (59, 16, 9, 1, 23, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (60, 16, 86, 1, 1.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (61, 17, 6, 6, 17.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (62, 17, 9, 6, 19.5833, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (63, 18, 3, 3, 3.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (64, 19, 41, 5, 50, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (65, 19, 32, 5, 5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (66, 19, 30, 5, 4.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (67, 19, 60, 5, 8.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (68, 19, 77, 10, 10, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (69, 19, 81, 5, 13.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (70, 19, 129, 5, 12, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (71, 19, 131, 2, 142, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (72, 20, 77, 2, 12.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (73, 20, 110, 1, 7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (74, 20, 123, 1, 14.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (75, 20, 32, 1, 6, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (76, 20, 121, 1, 2.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (77, 21, 12, 1, 30.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (78, 21, 11, 1, 24.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (79, 21, 20, 12, 1.95, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (80, 21, 27, 6, 2.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (81, 21, 39, 12, 1.2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (82, 21, 38, 12, 3.4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (83, 21, 40, 12, 2.1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (84, 21, 45, 3, 8.7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (85, 21, 61, 3, 7.2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (86, 21, 89, 6, 4.4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (87, 21, 90, 6, 4.4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (88, 21, 70, 12, 0.55, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (89, 21, 72, 12, 0.69, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (90, 21, 73, 12, 0.71, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (91, 21, 75, 4, 3.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (92, 21, 76, 4, 8.6, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (93, 21, 83, 6, 4.1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (94, 21, 100, 6, 3.6, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (95, 21, 104, 6, 5.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (96, 21, 103, 6, 4.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (97, 21, 106, 6, 5.65, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (98, 21, 93, 6, 2.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (99, 21, 94, 6, 12.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (100, 21, 8, 12, 12.2, 0)
GO
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (101, 21, 95, 6, 10.29, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (102, 21, 119, 6, 3.95, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (103, 21, 118, 6, 7.6, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (104, 21, 21, 6, 5.89, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (105, 21, 16, 12, 0.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (106, 21, 15, 12, 0.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (107, 21, 102, 12, 0.28, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (108, 21, 92, 6, 2.95, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (109, 21, 78, 4, 4.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (110, 21, 79, 4, 3.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (111, 21, 10, 6, 1.4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (112, 22, 9, 6, 19.583, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (113, 23, 111, 1, 7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (114, 24, 113, 1, 44, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (115, 24, 4, 1, 18, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (116, 25, 116, 25, 2.15, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (117, 25, 117, 25, 2.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (118, 25, 44, 5, 15.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (119, 25, 85, 100, 0.18, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (120, 26, 7, 1, 30, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (121, 27, 6, 12, 17.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (122, 27, 9, 12, 19.583, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (123, 28, 18, 3, 119, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (124, 28, 19, 1, 159.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (125, 28, 31, 30, 2.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (126, 28, 22, 40, 1.75, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (127, 28, 56, 2, 50, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (128, 28, 63, 2, 76.1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (129, 28, 103, 5, 4.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (130, 29, 55, 2, 130, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (131, 29, 125, 2, 29.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (132, 29, 64, 1, 70.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (133, 30, 108, 3, 9.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (134, 30, 42, 3, 9.3, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (135, 30, 112, 3, 2.99, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (136, 31, 51, 1, 92, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (137, 31, 69, 15, 1.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (138, 32, 17, 1, 68, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (139, 32, 124, 1, 26, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (140, 33, 58, 20, 3.69, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (141, 33, 99, 2, 2.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (142, 34, 115, 2, 4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (143, 34, 29, 1, 4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (144, 35, 54, 3, 111.2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (145, 36, 125, 1, 34, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (146, 36, 71, 1, 2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (147, 37, 129, 8, 10.9, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (148, 37, 107, 2, 11.1, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (149, 38, 53, 2, 90.2, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (150, 38, 52, 2, 77, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (151, 39, 34, 2, 83.6, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (152, 39, 50, 2, 114.4, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (153, 39, 65, 10, 10.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (154, 39, 1, 5, 8.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (155, 39, 2, 5, 8.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (156, 39, 101, 20, 8.7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (157, 39, 56, 2, 50, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (158, 40, 36, 8, 12.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (159, 41, 24, 1, 288, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (160, 41, 91, 1, 12, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (161, 41, 114, 1, 3, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (162, 41, 6, 1, 19, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (163, 41, 109, 1, 10, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (164, 42, 8, 24, 12, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (165, 42, 122, 15, 1.8, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (166, 43, 41, 2, 48, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (167, 43, 82, 2, 13.5, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (168, 43, 30, 10, 4.85, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (169, 43, 32, 10, 4.7, 0)
INSERT [dbo].[DETALLE_VENTA] ([iddetalle_venta], [idventa], [idarticulo], [cantidad], [precio_venta], [descuento]) VALUES (170, 43, 120, 1, 1, 0)
GO
INSERT [dbo].[USUARIO] ([idusuario], [nombre], [tipo_documento], [num_documento], [direccion], [telefono], [email], [cargo], [login], [clave], [condicion]) VALUES (1, N'administrador', N'dni', N'12345678', N'piura', N'123456789', N'admin@gmail.com', N'adminstrador', N'admin', N'admin', 1)
GO
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (1, 10, 1, N'', N'FF01', N'608', CAST(N'2021-11-02T08:23:00.000' AS DateTime), 21.28, 139.5, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (2, 21, 1, N'', N'FF01', N'609', CAST(N'2021-11-02T10:00:00.000' AS DateTime), 39.9, 221.88, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (3, 8, 1, N'', N'FF01', N'610', CAST(N'2021-11-03T10:41:00.000' AS DateTime), 80.54, 528, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (4, 16, 1, N'', N'FF01', N'611', CAST(N'2021-11-03T13:43:00.000' AS DateTime), 3.36, 22, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (5, 7, 1, N'', N'FF01', N'612', CAST(N'2021-11-04T10:38:00.000' AS DateTime), 11.82, 77.5, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (6, 18, 1, N'', N'FF01', N'613', CAST(N'2021-11-04T13:11:00.000' AS DateTime), 2.14, 14, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (7, 21, 1, N'', N'FF01', N'614', CAST(N'2021-11-04T15:26:00.000' AS DateTime), 194.81, 1277.1, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (8, 27, 1, N'', N'FF01', N'615', CAST(N'2021-11-05T10:45:00.000' AS DateTime), 17.92, 117.5, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (9, 11, 1, N'', N'FF01', N'616', CAST(N'2021-11-05T10:52:00.000' AS DateTime), 17.54, 115, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (10, 12, 1, N'', N'FF01', N'617', CAST(N'2021-11-05T16:04:00.000' AS DateTime), 1.07, 7, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (11, 28, 1, N'', N'FF01', N'618', CAST(N'2021-11-05T16:26:00.000' AS DateTime), 64.98, 426, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (12, 6, 1, N'', N'FF01', N'619', CAST(N'2021-11-08T11:14:00.000' AS DateTime), 1.53, 10, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (13, 25, 1, N'', N'FF01', N'620', CAST(N'2021-11-08T13:08:00.000' AS DateTime), 250.03, 1639.1, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (14, 29, 1, N'', N'FF01', N'621', CAST(N'2021-11-08T14:28:00.000' AS DateTime), 44.54, 292.01, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (15, 12, 1, N'', N'FF01', N'622', CAST(N'2021-11-08T14:29:00.000' AS DateTime), 7.02, 46, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (16, 17, 1, N'', N'FF01', N'623', CAST(N'2021-11-08T18:03:00.000' AS DateTime), 84.05, 551, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (17, 5, 1, N'', N'FF01', N'624', CAST(N'2021-11-09T14:17:00.000' AS DateTime), 33.94, 222.5, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (18, 11, 1, N'', N'FF01', N'625', CAST(N'2021-11-10T08:46:00.000' AS DateTime), 1.6, 10.5, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (19, 13, 1, N'', N'FF01', N'626', CAST(N'2021-11-10T11:17:00.000' AS DateTime), 130.42, 855, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (20, 10, 1, N'', N'FF01', N'627', CAST(N'2021-11-10T15:32:00.000' AS DateTime), 8.39, 55, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (21, 20, 1, N'', N'FF01', N'628', CAST(N'2021-11-10T18:59:00.000' AS DateTime), 149.79, 981.94, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (22, 22, 1, N'', N'FF01', N'629', CAST(N'2021-11-11T09:16:00.000' AS DateTime), 17.92, 117.5, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (23, 15, 1, N'', N'FF01', N'630', CAST(N'2021-11-11T17:53:00.000' AS DateTime), 1.07, 7, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (24, 4, 1, N'', N'FF01', N'631', CAST(N'2021-11-12T08:56:00.000' AS DateTime), 9.46, 62, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (25, 14, 1, N'', N'FF01', N'632', CAST(N'2021-11-12T09:41:00.000' AS DateTime), 34.47, 226, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (26, 30, 1, N'', N'FF01', N'633', CAST(N'2021-11-12T09:45:00.000' AS DateTime), 4.58, 30, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (27, 24, 1, N'', N'FF01', N'634', CAST(N'2021-11-12T09:54:00.000' AS DateTime), 67.88, 445, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (28, 14, 1, N'', N'FF01', N'635', CAST(N'2021-11-12T15:32:00.000' AS DateTime), 145.49, 953.75, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (29, 3, 1, N'', N'FF01', N'636', CAST(N'2021-11-12T15:57:00.000' AS DateTime), 59.54, 390.3, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (30, 15, 1, N'', N'FF01', N'637', CAST(N'2021-11-13T15:48:00.000' AS DateTime), 10.2, 66.84, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (31, 23, 1, N'', N'FF01', N'638', CAST(N'2021-11-13T15:50:00.000' AS DateTime), 18.15, 119, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (32, 19, 1, N'', N'FF01', N'639', CAST(N'2021-11-13T17:21:00.000' AS DateTime), 14.34, 94, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (33, 9, 1, N'', N'FF01', N'640', CAST(N'2021-11-15T09:54:00.000' AS DateTime), 12.11, 79.4, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (34, 13, 1, N'', N'FF01', N'641', CAST(N'2021-11-15T10:09:00.000' AS DateTime), 1.83, 12, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (35, 31, 1, N'', N'FF01', N'642', CAST(N'2021-11-15T12:32:00.000' AS DateTime), 50.89, 333.6, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (36, 2, 1, N'', N'FF01', N'643', CAST(N'2021-11-15T12:58:00.000' AS DateTime), 5.49, 36, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (37, 17, 1, N'', N'FF01', N'644', CAST(N'2021-11-15T14:26:00.000' AS DateTime), 16.69, 109.4, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (38, 32, 1, N'', N'FF01', N'645', CAST(N'2021-11-15T15:53:00.000' AS DateTime), 51.01, 334.4, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (39, 20, 1, N'', N'FF01', N'646', CAST(N'2021-11-15T15:54:00.000' AS DateTime), 132.1, 866, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (40, 26, 1, N'', N'FF01', N'647', CAST(N'2021-11-15T15:55:00.000' AS DateTime), 15.62, 102.4, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (41, 33, 1, N'', N'FF01', N'648', CAST(N'2021-11-15T19:02:00.000' AS DateTime), 50.64, 332, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (42, 1, 1, N'', N'FF01', N'649', CAST(N'2021-11-16T08:51:00.000' AS DateTime), 48.05, 315, N'1')
INSERT [dbo].[VENTA] ([idventa], [idcliente], [idusuario], [tipo_comprobante], [serie_comprobante], [num_comprobante], [fecha_hora], [impuesto], [total_venta], [estado]) VALUES (43, 16, 1, N'', N'FF01', N'650', CAST(N'2021-11-16T11:58:00.000' AS DateTime), 33.48, 219.5, N'1')
GO
ALTER TABLE [dbo].[ARTICULO]  WITH CHECK ADD  CONSTRAINT [FK_idcategoria] FOREIGN KEY([idcategoria])
REFERENCES [dbo].[CATEGORIA] ([id_categoria])
GO
ALTER TABLE [dbo].[ARTICULO] CHECK CONSTRAINT [FK_idcategoria]
GO
ALTER TABLE [dbo].[COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_idproveedor] FOREIGN KEY([idproveedor])
REFERENCES [dbo].[PROVEEDOR] ([idproveedor])
GO
ALTER TABLE [dbo].[COMPRA] CHECK CONSTRAINT [FK_idproveedor]
GO
ALTER TABLE [dbo].[COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_idusuario] FOREIGN KEY([idusuario])
REFERENCES [dbo].[USUARIO] ([idusuario])
GO
ALTER TABLE [dbo].[COMPRA] CHECK CONSTRAINT [FK_idusuario]
GO
ALTER TABLE [dbo].[DETALLE_COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_idarticulo] FOREIGN KEY([idarticulo])
REFERENCES [dbo].[ARTICULO] ([idarticulo])
GO
ALTER TABLE [dbo].[DETALLE_COMPRA] CHECK CONSTRAINT [FK_idarticulo]
GO
ALTER TABLE [dbo].[DETALLE_COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_idcompra] FOREIGN KEY([idcompra])
REFERENCES [dbo].[COMPRA] ([idcompra])
GO
ALTER TABLE [dbo].[DETALLE_COMPRA] CHECK CONSTRAINT [FK_idcompra]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_idarticulo_venta] FOREIGN KEY([idarticulo])
REFERENCES [dbo].[ARTICULO] ([idarticulo])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_idarticulo_venta]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_idventa] FOREIGN KEY([idventa])
REFERENCES [dbo].[VENTA] ([idventa])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_idventa]
GO
ALTER TABLE [dbo].[USUARIO_PERMISO]  WITH CHECK ADD  CONSTRAINT [FK_idpermiso_permiso] FOREIGN KEY([idpermiso])
REFERENCES [dbo].[PERMISO] ([idpermiso])
GO
ALTER TABLE [dbo].[USUARIO_PERMISO] CHECK CONSTRAINT [FK_idpermiso_permiso]
GO
ALTER TABLE [dbo].[USUARIO_PERMISO]  WITH CHECK ADD  CONSTRAINT [FK_idusuario_permiso] FOREIGN KEY([idusuario])
REFERENCES [dbo].[USUARIO] ([idusuario])
GO
ALTER TABLE [dbo].[USUARIO_PERMISO] CHECK CONSTRAINT [FK_idusuario_permiso]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_idcliente_venta] FOREIGN KEY([idcliente])
REFERENCES [dbo].[CLIENTE] ([idcliente])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_idcliente_venta]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_idusuario_venta] FOREIGN KEY([idusuario])
REFERENCES [dbo].[USUARIO] ([idusuario])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_idusuario_venta]
GO
