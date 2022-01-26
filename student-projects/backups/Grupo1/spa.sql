USE [master]
GO
/****** Object:  Database [spa clase]    Script Date: 19/01/2022 21:24:53 ******/
CREATE DATABASE [spa clase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'spa clase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\spa clase.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'spa clase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\spa clase_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [spa clase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [spa clase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [spa clase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [spa clase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [spa clase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [spa clase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [spa clase] SET ARITHABORT OFF 
GO
ALTER DATABASE [spa clase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [spa clase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [spa clase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [spa clase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [spa clase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [spa clase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [spa clase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [spa clase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [spa clase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [spa clase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [spa clase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [spa clase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [spa clase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [spa clase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [spa clase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [spa clase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [spa clase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [spa clase] SET RECOVERY FULL 
GO
ALTER DATABASE [spa clase] SET  MULTI_USER 
GO
ALTER DATABASE [spa clase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [spa clase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [spa clase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [spa clase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [spa clase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'spa clase', N'ON'
GO
USE [spa clase]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 19/01/2022 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id_Categoria] [int] NOT NULL,
	[Nom_Cat] [varchar](50) NULL,
	[Descripcion_cat] [varchar](250) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 19/01/2022 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_clien] [varchar](50) NULL,
	[Apellido_clien] [varchar](50) NULL,
	[Num_doc] [varchar](11) NULL,
	[Direccion_cliente] [varchar](50) NULL,
	[E-mail_clien] [varchar](50) NULL,
	[Tel_Clien] [varchar](9) NULL,
	[Estado_Civil] [nchar](10) NULL,
	[edad] [int] NULL,
	[Sexo] [nchar](1) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comprobante]    Script Date: 19/01/2022 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprobante](
	[Id_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[id_cliente] [int] NULL,
	[id_detalle] [int] NULL,
	[id_Trab] [int] NULL,
 CONSTRAINT [PK_Comprobante] PRIMARY KEY CLUSTERED 
(
	[Id_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalle_comprobante]    Script Date: 19/01/2022 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_comprobante](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_servicio] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[subtotal] [decimal](18, 2) NULL,
	[igv] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Detalle_comprobante] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalle_Producto]    Script Date: 19/01/2022 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Detalle_Producto](
	[Id_Detalle_Producto] [int] NOT NULL,
	[Guia_Proveedor] [varchar](20) NULL,
	[Lote] [varchar](50) NULL,
	[estado_prod] [nchar](10) NULL,
	[fecha_vencimiento] [date] NULL,
	[fecha_produccion] [date] NULL,
	[Id_proveedor] [int] NULL,
	[id_producto] [int] NULL,
 CONSTRAINT [PK_Detalle_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Detalle_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 19/01/2022 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Producto] [varchar](250) NULL,
	[Precio_venta] [decimal](18, 2) NULL,
	[fecha_vencimiento] [date] NULL,
	[comentarios] [varchar](250) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 19/01/2022 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nom_proveedor] [varchar](50) NULL,
	[Dir_proveedor] [varchar](250) NULL,
	[Tipo_proveedor] [int] NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 19/01/2022 21:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicio](
	[Id_servicio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_serv] [varchar](50) NULL,
	[Precio_serv] [decimal](18, 2) NULL,
	[Descripcion_serv] [varchar](250) NULL,
	[Id_tipo] [int] NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[Id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_servicio]    Script Date: 19/01/2022 21:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_servicio](
	[Id_tipo] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Comentario] [varchar](250) NULL,
 CONSTRAINT [PK_Tipo_servicio] PRIMARY KEY CLUSTERED 
(
	[Id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 19/01/2022 21:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trabajador](
	[Id_trabajador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_trab] [varchar](50) NULL,
	[Apellido_trab] [varchar](50) NULL,
	[Documento_trab] [varchar](8) NULL,
	[Fecha_nacimiento] [date] NULL,
	[Direccion_trab] [varchar](50) NULL,
	[Area_trab] [varchar](50) NULL,
 CONSTRAINT [PK_Trabajador] PRIMARY KEY CLUSTERED 
(
	[Id_trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (9, N'ADRIANA CAROLINA', N'HERNANDEZ MONTERROZA', N'72915335', N'Calle 10 5-51', N'LoisVMiller@fleckens.hu', N'961063566', N'soltera   ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (10, N'ADRIANA MARCELA', N'REY SANCHEZ', N'71808457', N'Calle 53 No 10-60/46, Piso 2.', N'CristieISaenz@teleworm.us', N'985102548', N'casado    ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (11, N'ADRIANA MARCELA', N'REY SANCHEZ', N'71808457', N'Calle 53 No 10-60/46, Piso 2.', N'CristieISaenz@teleworm.us', N'985102548', N'casado    ', 18, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (12, N'ALEJANDRO', N'ABONDANO ACEVEDO', N'73507996', N'Calle 10 # 5-51', N'AllysonMPittman@gustr.com', N'986195993', N'viudo     ', 43, N'0')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (18, N'ALEXANDER', N'CARVAJAL VARGAS', N'75202114', N'"Avenida Calle 26 No 59-51 Edificio Argos', N'StephanieMJones@dayrep.com', N'971130250', N'casado    ', 19, N'0')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (21, N'ANDREA CATALINA', N'ACERO CARO', N'74960612', N'Calle 9 # 9 – 62, Leticia, Barrio Centro	', N'CarltonJTerry@dayrep.com', N'970895926', N'soltero   ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (22, N'ANDRES FELIPE', N'	VILLA MONROY', N'	73707987', N'	Carrera  21  17 -63', N'	ThereseJBorowski@cuvox.de', N'985363296', N'casado    ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (26, N'ANGELA PATRICIA', N'MAHECHA PIÑEROS', N'73682180', N'Carrera 42', N'NadineFBaker@armyspy.com', N'994094081', N'viudo     ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (27, N'ANGELA PATRICIA', N'MAHECHA PIÑEROS', N'73682180', N'Carrera 42', N'NadineFBaker@armyspy.com', N'994094081', N'viudo     ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (29, N'ANGELICA LISSETH', N'BLANCO CONCHA', N'72127789', N'Calle 100 # 11B-27 Bogotá', N'TerriWTrejo@teleworm.us', N'919573525', N'casado    ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (30, N'ANGELICA MARIA', N'ROCHA GARCIA', N'73508666', N'Carrera 20 B # 29-18. Barrio  Pie de la Popa.', N'victorMFord@fleckens.hu', N'926246053', N'soltero   ', 19, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (31, N'ANGIE TATIANA', N'FERNÁNDEZ MARTÍNEZ', N'74985694', N'Transversal 9 a No. 29 - 29 Barrio Maldonado', N'JerryHSon@cuvox.de', N'976118313', N'soltero   ', 18, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (32, N'BRIGITE', N'POLANCO RUIZ', N'74582955', N'Calle 53 # 25A-35', N'BetteKWitham@dayrep.com', N'921224884', N'casado    ', 21, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (33, N'CAMILO	VILLAMIZAR', N' ARISTIZABAL', N'71199258', N'	Carrera 20 B # 29-18. Barrio  Pie de la Popa.', N'TimothyMMayes@jourrapide.com', N'961810962', N'viudo     ', 24, N'1')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (34, N'CAMILO	', N'RODRÍGUEZ BOTERO', N'73788644', N'Calle 7 # 19-35', N'RhondaMDavis@armyspy.com', N'946844979', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (35, N'CAMILO ALBERTO', N'CORTÉS MONTEJO', N'71440464', N'Calle 4 norte # 10B-66 Barrio Modelo', N'	BrianSMorrison@armyspy.com', N'984617667', N'soltero   ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (38, N'CAMILO ENRIQUE', N'GOMEZ RODRIGUEZ', N'73639292', N'carrera 8 #15-19', N'JeffreyTSanner@teleworm.us', N'918124478', N'soltero   ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (39, N'CAMILO ALBERTO', N'CORTÉS MONTEJO', N'71440464', N'Calle 4 norte # 10B-66 Barrio Modelo', N'BrianSMorrison@armyspy.com', N'984617667', N'soltero   ', 42, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (43, N'CAMILO ENRIQUE', N'GOMEZ RODRIGUEZ', N'73639292', N'carrera 8 #15 19', N'JeffreyTSanner@teleworm.us', N'918124478', N'soltero   ', 18, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (44, N'CARLOS ANDRÉS', N'POLO CASTELLANOS', N'71471561', N'Calle 28 # 2-27 Barrio Centro', N'DanielleDMendoza@einrot.com', N'984307218', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (45, N'CARLOS DIDIER', N'CASTAÑO CONTRERAS', N'71664449', N'Calle 25 # 6-08', N'HenryJBritton@armyspy.com', N'991832262', N'viudo     ', 56, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (46, N'CARLOS FELIPE', N'MOGOLLÓN PACHÓN', N'71792385', N'Calle 10 # 8-07', N'MichealCChapman@armyspy.com', N'915211607', N'casado    ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (48, N'CAROL RUCHINA', N'GOMEZ GIANINE', N'74760117', N'Carrera 12 No. 19-00 Local 18', N'MichaelEGarrison@superrito.com', N'932630156', N'soltero   ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (49, N'CAROL RUCHINA', N'GOMEZ GIANINE', N'74199708', N'Calle 5 # 4-48 Barrio Centro', N'DonaldIMacias@fleckens.hu', N'986134368', N'soltero   ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (50, N'CAROLINA	PINTOR', N'PINZON', N'73203516', N'Calle 16 # 3-28', N'	JorgeJSanfilippo@teleworm.us', N'993416322', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (51, N'CATHERINE	OSPINA', N'ALFONSO', N'73572438', N'Calle 22 # 13 – A 88 Barrio Los Alcazares', N'georgeCJameson@rhyta.com', N'992226863', N'	viudo    ', 78, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (52, N'CINTHYA FERNANDA', N'DUSSÁN GUZMÁN', N'72920749', N'Calle 37 # 42-12', N'GeraldCHuston@fleckens.hu', N'932077783', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (53, N'CLAUDIA LILIANA', N'TORRES FRIAS', N'71781878', N'Calle 17 # 29-70', N'JodiMRuppe@teleworm.us	', N'969396686', N'soltero   ', 45, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (54, N'CRISTINA ELIZABETH', N'BARTHEL GUARDIOLA', N'72991069', N'	Calle 8 # 7-40 Centro', N'LisaNCarpenter@teleworm.us', N'959789850', N'soltero   ', 64, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (55, N'DANIEL', N'GÓMEZ DELGADO', N'71141191', N'Avenida 1 # 28-57', N'	GaryJBurns@jourrapide.com', N'930191019', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (56, N'DANIEL ANDRÉS', N'CASTIBLANCO SALGADO', N'71498545', N'	Avenida 30 de agosto # 26-37', N'ElizabethKKing@armyspy.com', N'959505798', N'viudo     ', 56, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (57, N'DANIELA', N'HERNÁNDEZ BRAVO', N'72456801', N'Carrera 7 # 2-70 Sector Swamp Ground', N'AliceTThompson@rhyta.com', N'989085415', N'casado    ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (58, N'DANIELA', N'HERNÁNDEZ BRAVO', N'72417602', N'Carrera 10 # 3-92', N'	AaronCMcCall@armyspy.com', N'959364888', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (59, N'DANIELA', N'GUZMÁN', N'73103264', N'Carrera 11 # 41-13', N'BridgetteCBass@einrot.com', N'975934847', N'soltero   ', 45, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (78, N'DANIELA KATHERINNE', N'SUARIQUE ÁVILA', N'73175938', N'Calle 20 24-05 Barrio Centro', N'ElizabethDLuce@cuvox.de', N'992547469', N'casado    ', 66, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (79, N'DANIELLA', N'PUERTO NAVIA', N'72605149', N'Avenida 3 norte 50N-20', N'KimberlyMMackie@armyspy.com', N'953729552', N'viudo     ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (80, N'DENY MARCELA', N'MUÑOZ LIZARAZO', N'74397742', N'StreetAddress', N'AnneMAlfonso@fleckens.hu', N'930997885', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (81, N'DIANA CAROLINA', N'LOPEZ RODRIGUEZ', N'72856774', N'Paso Rivero 8046', N'MichelleCRoss@cuvox.de', N'936764774', N'soltero   ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (82, N'DIANA CATALINA', N'DIAZ BELTRAN	', N'71923367', N'Hocquart 3796', N'VernonBBarnes@teleworm.us', N'992803640', N'soltero   ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (83, N'DIEGO ALEJANDRO', N'FORERO PEÑA', N'74662958', N'Joaquin Suarez 5055', N'AmandaJDickerson@einrot.com', N'932819787', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (90, N'ESTEWIL CARLOS', N'QUESADA CALDERÍN', N'74347574', N'Ituzaingó 2972', N'ColetteSLow@teleworm.us', N'953929104', N'viudo     ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (91, N'ESTEWIL CARLOS', N'QUESADA CALDERÍN', N'72748615', N'Rigoberto Lopez 7505', N'LavonWTate@cuvox.de', N'988539885', N'casado    ', 22, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (93, N'FABIAN ANDRES', N'FINO ANDRADE', N'71169481', N'Piedras 7063', N'TaniaJWhite@gustr.com', N'968789659', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (94, N'GABRIEL FELIPE', N'HERRERA MORENO', N'71185757', N'Ituzaingó 7003', N'ClariceECuster@dayrep.com', N'979366010', N'soltero   ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (95, N'GABRIEL MAURICIO', N'NIETO BUSTOS', N'72935175', N'Coronilla 5831', N'MarieCHarris@cuvox.de', N'989790985', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (96, N'GABRIEL MAURICIO', N'NIETO BUSTOS', N'75134525', N'Miguelete 1976', N'MaryRDavidson@gustr.com	', N'979893091', N'viudo     ', 34, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (97, N'GLORIA PATRICIA', N'MENDOZA ALVEAR', N'73298464', N'Paysandu 8320', N'PriscillaJJones@einrot.com', N'962049073', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (98, N'HUGO ANDRÉS', N'CAMARGO VARGAS', N'74321505', N'Tabaré 2179', N'EulaliaJCobb@jourrapide.com', N'985524619', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (99, N'INGRID ROCIO', N'GUERRERO PENAGOS', N'71768465', N'Monteadores 4196', N'InesREdward@dayrep.com', N'958807033', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (100, N'IVÁN DAVID', N'CORAL BURBANO', N'71492976', N'Ombù 3913', N'DennisDArtz@armyspy.com', N'993483425', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (101, N'IVONNE JOULIETTE', N'BARRERA LOPEZ', N'71809072', N'Ibirapita 1579', N'RichardGAmin@jourrapide.com', N'925372649', N'viudo     ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (102, N'JENNY FERNANDA', N'SÁNCHEZ ARENAS', N'72527601', N'Yapeyu 1709', N'GiaRAsberry@superrito.com', N'985311683', N'casado    ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (103, N'JENNY VIVIANA', N'MONCALEANO PRECIADO', N'72658186', N'	Del Monte 2753', N'MikeTEvenson@teleworm.us', N'919737424', N'soltero   ', 54, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (104, N'JORGE ESTEBAN', N'REY BOTERO', N'71611142', N'Tala 5429', N'JenniferJVasquez@dayrep.com', N'925753499', N'soltero   ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (113, N'JORGE MARIO', N'OROZCO DUSSÁN', N'71572110', N'Leandro Gomez 1247', N'RethaACollier@rhyta.com', N'988851563', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (114, N'JORGE MARIO', N'OROZCO DUSSÁN', N'74993099', N'Rigoberto Lopez 2758', N'KimberleyJTaylor@teleworm.us', N'962766890', N'viudo     ', 33, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (115, N'JOSE GUILLERMO', N'MARIN ZUBIETA', N'72956313', N'Hocquart 4562', N'DianaMMankin@teleworm.us', N'982221731', N'casado    ', 42, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (116, N'JUAN CAMILO', N'ORTEGA PEÑA', N'71904390', N'Del Monte 3260', N'LeonaCWynn@armyspy.com', N'916393068', N'soltero   ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (117, N'JUAN CAMILO', N'JIMENEZ CORTES', N'74525841', N'Marejada 4255', N'PaulineKReynolds@armyspy.com', N'959720768', N'soltero   ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (118, N'JUAN CAMILO', N'JIMENEZ CORTES', N'75017983', N'Lavalleja 4145', N'ArmandDJackson@teleworm.us', N'940819147', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (119, N'JUAN ESTEBAN', N'LANAO SÁNCHEZ', N'71701410', N'Ombù 5520', N'CherylWSenters@gustr.com', N'982137490', N'viudo     ', 22, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (120, N'JUAN FERNANDO', N'BARJUCH MORENO', N'72828014', N'Costanera 1331', N'JoshuaDBalke@einrot.com', N'951581912', N'casado    ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (121, N'JUAN SEBASTIAN', N'ROMERO ESCOBAR', N'72863128', N'Guayabos 5636', N'IvyCWilliams@rhyta.com', N'958387511', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (122, N'JUAN SEBASTIAN', N'TARQUINO ACOSTA', N'73225404', N'Colombes 2970', N'DanielleHSmith@rhyta.com', N'948591180', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (123, N'JUAN SEBASTIAN', N'SANCHEZ SANCHEZ', N'74723054', N'Mirasoles 9684', N'GregoryLKline@armyspy.com', N'983756564', N'casado    ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (124, N'JULIÁN', N'ROMERO MONTOYA', N'71795330', N'Cagancha 5860', N'MichaelVBlack@teleworm.us', N'940513961', N'viudo     ', 34, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (125, N'JULIAN LEONARDO', N'SANCHEZ PRADA', N'74133709', N'Paysandu 1480', N'DarlineLDeweese@fleckens.hu', N'957637786', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (126, N'JULIANA', N'GAVIRIA GARCIA', N'72755175', N'Florianapolis 4614', N'ManuelNAnderson@einrot.com', N'965093681', N'soltero   ', 42, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (127, N'JULY CATHERINE', N'GONZALEZ SUAREZ', N'72622704', N'Guipúzcoa 8298', N'PaulinaJCaldwell@rhyta.com', N'956156018', N'soltero   ', 45, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (128, N'KAREN ELIANA', N'HERNÁNDEZ PULIDO', N'73984700', N'Leandro Gomez 2913', N'GemaDEbert@rhyta.com', N'964732034', N'casado    ', 53, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (129, N'LAURA', N'DIAZ MEJIA', N'73664312', N'Molle 7515', N'GlennLSimmons@dayrep.com', N'972721594', N'viudo     ', 22, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (130, N'LAURA CAMILA', N'PUERTO CASTRO', N'72438692', N'Florianapolis 1043', N'SamNAndrews@superrito.com', N'993058376', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (131, N'LAURA CATALINA', N'VARON BUITRAGO', N'74680504', N'Ansina 6900', N'LouisJThibodaux@einrot.com', N'943679556', N',soltero  ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (132, N'LAURA FERNANDA', N'RODRÍGUEZ TORRES', N'74194994', N'Del Monte 8198', N'AngelaRPrice@einrot.com', N'934234689', N'soltero   ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (133, N'LAURA FERNANDA', N'RODRÍGUEZ TORRES', N'73150405', N'Canelones 5133', N'GeoffreyRBrookover@superrito.com', N'967556705', N'casado    ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (134, N'LAURA NATALIA', N'NOVOA GOMEZ', N'74251992', N'Ombù 7718', N'BrandonMObyrne@teleworm.us', N'943096848', N'viudo     ', 22, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (135, N'LAURA VIVIANA', N'DEL RÍO AYERBE', N'74605497', N'Coquimbo 8242', N'CelestineJHays@cuvox.de', N'991930327', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (136, N'LEONARDO ANDRÉS', N'DUEÑAS ROJAS', N'73133163', N'Del Sauzal 8668', N'RichardBSmith@cuvox.de', N'950983127', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (137, N'LINA MARÍA', N'ZÚÑIGA RAMÍREZ', N'73659579', N'Ibirapita 7976', N'JackBTodd@armyspy.com', N'919581777', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (138, N'LISETH TATIANA', N'SIERRA VILLAMIL', N'74116117', N'Treinta y Tres 3283', N'ScottVJardine@dayrep.com', N'960452965', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (139, N'LISETH TATIANA', N'SIERRA VILLAMIL', N'75142824', N'Miguelete 3794', N'MatthewKMendoza@teleworm.us', N'959473604', N'viudo     ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (140, N'LUISA FERNANDA', N'GARCÍA FONNEGRA', N'74483728', N'Porongos 9189', N'MaryLMaldonado@rhyta.com', N'936344509', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (141, N'LUISA FERNANDA', N'GARCÍA FONNEGRA', N'71562763', N'Miguelete 8917', N'WmMColyer@gustr.com', N'921257870', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (142, N'MARCELA', N'GARCIA RUEDA', N'73256588', N'Guayabos 4346', N'KennyMSanchez@dayrep.com', N'974634961', N'soltero   ', 4, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (143, N'MARIA ALEJANDRA', N'BOLÍVAR GALEANO', N'73878716', N'Copacabana 3085', N'LindaECroll@einrot.com', N'935360704', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (144, N'MARIA ALEJANDRA', N'HORTA OCHOA', N'72878164', N'Baltasar Brum 1390', N'KristopherNRobertson@gustr.com', N'976177962', N'viudo     ', 34, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (145, N'MARÍA ANGÉLICA', N'BELTRÁN CASTILLO', N'71238348', N'Martín Garcia 8319', N'SandraRRigg@jourrapide.com', N'937449703', N'casado    ', 22, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (146, N'MARÍA CAMILA', N'GUACAS JIMÉNEZ', N'72616285', N'Del Sauzal 8163', N'HectorSTorres@armyspy.com', N'977833393', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (147, N'MARIA CAMILA', N'NIETO BUSTOS', N'71617579', N'Larrañaga 9354', N'DawnRZeman@fleckens.hu', N'990506856', N'soltero   ', 33, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (148, N'MARIA JOSÉ', N'GARCÍA MORA', N'71805277', N'Yapeyu 1058', N'JoeSTate@rhyta.com', N'953495207', N'casado    ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (149, N'MARIA JOSÉ', N'GARCÍA MORA', N'71903622', N'Tala 5608', N'RichardFKing@fleckens.hu', N'937002244', N'viudo     ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (150, N'MARIA MARGARITA', N'PEREZ MORENO', N'72736636', N'Juncal 5148', N'DavidEMay@dayrep.com', N'936881980', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (151, N'MARIA MARGARITA', N'PEREZ MORENO', N'72511721', N'Republica de Chile 7898', N'TracyALewis@einrot.com', N'976289225', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (152, N'MARIA NATALIA', N'CERVANTES LUNA', N'75222836', N'Colón 2263', N'GraceJMunguia@gustr.com', N'956808622', N'soltero   ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (153, N'MARIANA DEL PILAR', N'SANTOS MILACHAY', N'75147529', N'	Ibirapita 9822', N'KatieSMackey@einrot.com', N'919832970', N'casado    ', 21, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (154, N'MARIO FERNANDO', N'GARZÓN MUÑOZ', N'72083830', N'Juncal 7064', N'CarolineJWilliams@teleworm.us', N'929736844', N'viudo     ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (155, N'MÓNICA ALEXANDRA', N'CAMACHO AMAYA', N'74316818', N'Coquimbo 9765', N'HeatherAWittig@superrito.com', N'959279804', N'casado    ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (156, N'MÓNICA NATALIA', N'CAMARGO MENDOZA', N'74442146', N'Parva Domus 9686', N'LisaCEaton@dayrep.com', N'973191419', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (157, N'NATALIA', N'BUITRAGO CONTRERAS', N'71964474', N'Republica de Chile 6688', N'KarlJBalderrama@fleckens.hu', N'950742959', N'soltero   ', 32, NULL)
GO
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (158, N'NATALIA', N'PUENTES PERDOMO', N'72765622', N'Del Sauzal 5519', N'KatieECobb@cuvox.de', N'985033510', N'casado    ', 22, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (159, N'NATALIA ANDREA', N'GUTIÉRREZ VELASCO', N'73412635', N'Olimpo 3092', N'ThomasBGately@einrot.com', N'926839231', N'viudo     ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (160, N'NATALIA MELISSA', N'BARRERO FORERO', N'74611867', N'Rincon 8541', N'AndrewMLove@armyspy.com', N'987388749', N'casado    ', 11, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (161, N'NATALIA VIVY', N'CASAS PÁEZ', N'75152427', N'Sarandí 8158', N'AliceAPitts@rhyta.com', N'922414797', N'Soltero   ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (162, N'OLGA STEPHANNIA', N'SAMAN JIMENEZ', N'74117859', N'Aeropuerto 9685', N'SanjuanitaRSavala@rhyta.com', N'927459680', N'soltero   ', 34, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (163, N'OLGA VIVIANA', N'OVALLE SOLANO', N'71077359', N'Neruda 2489', N'GarfieldARowe@cuvox.de', N'933208829', N'casado    ', 42, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (164, N'OSCAR  FABIAN', N'CASTELLANOS ROJAS', N'73589462', N'Guayabos 2059', N'JakeMPoe@superrito.com', N'987651483', N'viudo     ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (165, N'OSCAR DAVID', N'COLMENARES BARBUDO', N'74356738', N'Costanera 3744', N'HarryKTillman@jourrapide.com', N'982168203', N'casado    ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (166, N'OSCAR JULIAN', N'ULLOA ORJUELA', N'73725173', N'Sarandí 3859', N'LucretiaAAaron@jourrapide.com', N'961465329', N'	soltero  ', 34, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (167, N'PABLO', N'URIBE ANTIA', N'71926817', N'Larrañaga 9661', N'DesiraeCJonas@rhyta.com', N'929866298', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (168, N'PAOLA ANDREA', N'CORREA LARIOS', N'74262140', N'Neptuno 2332', N'MitchellMSanders@jourrapide.com', N'977831739', N'casado    ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (169, N'RAFAEL ALEJANDRO', N'GONZALEZ ROJAS', N'74150191', N'Canelones 3446', N'PamelaDBoulton@dayrep.com', N'934936407', N'viudo     ', 52, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (170, N'RAFAEL ANDRES', N'ALVAREZ CASTILLO', N'74710643', N'Florianapolis 9046', N'PorfirioBWherry@gustr.com', N'924771608', N'casado    ', 42, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (171, N'RAFAEL ANDRES', N'ALVAREZ CASTILLO', N'71494567', N'Misiones 5446', N'BenjaminSBird@fleckens.hu', N'942630692', N'soltero   ', 42, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (172, N'RICARDO', N'VEGA ZAMBRANO', N'71128759', N'	Neptuno 7403', N'KimberlyRHumphreys@armyspy.com', N'961350774', N'soltero   ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (173, N'RICARDO', N'VEGA ZAMBRANO', N'74925276', N'	Piedras 5953', N'BettyMChavis@einrot.com', N'943471150', N'casado    ', 32, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (174, N'SANDRA XIMENA', N'GARCÉS PARRA', N'74514115', N'joaquin Suarez 6728', N'DarwinLKing@jourrapide.com', N'989473700', N'viudo     ', 12, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (175, N'SEBASTIAN', N'BORDA MELGUIZO', N'73941306', N'Ibirapita 5037', N'BrendaRKelly@einrot.com', N'982170218', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (176, N'SEBASTIÁN', N'IREGUI GALEANO', N'73053083', N'Costanera 7908', N'	JimVWolff@gustr.com', N'985476783', N'soltero   ', 43, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (177, N'YIRIAM LILIAM', N'OCHOA SABOGAL', N'71135299', N'Buenos Aires 6393', N'VictorPJones@gustr.com', N'991229550', N'soltero   ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (178, N'YIRIAM LILIAM', N'OCHOA SABOGAL', N'72290057', N'Canelones 6713	', N'JohnSMilligan@armyspy.com', N'937643935', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (179, N'YURANY CATALINA', N'CIFUENTES MENDEZ', N'72380798', N'Yapeyu 5461', N'JenniferSCarroll@teleworm.us', N'961924810', N'viudo     ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (180, N'YURI CATALINA', N'SALAZAR ARISTIZABAL', N'73884395', N'Del Sauzal 8026', N'CharleneWSingletary@teleworm.us', N'954340632', N'casado    ', 23, NULL)
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre_clien], [Apellido_clien], [Num_doc], [Direccion_cliente], [E-mail_clien], [Tel_Clien], [Estado_Civil], [edad], [Sexo]) VALUES (181, N'a', N'a||', N'81828212', N'qwjqw', N'jasj', N'919291929', N'casado    ', 23, NULL)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Comprobante] ON 

INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (1, CAST(N'2021-11-22' AS Date), 10, 1, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (3, CAST(N'2021-11-12' AS Date), 34, 2, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (7, CAST(N'2021-05-15' AS Date), 26, 3, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (14, CAST(N'2021-09-28' AS Date), 18, 4, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (15, CAST(N'2021-09-05' AS Date), 33, 5, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (17, CAST(N'2021-08-26' AS Date), 48, 6, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (18, CAST(N'2021-07-27' AS Date), 30, 7, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (19, CAST(N'2021-06-28' AS Date), 49, 8, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (20, CAST(N'2021-06-23' AS Date), 45, 9, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (21, CAST(N'2021-06-27' AS Date), 27, 10, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (22, CAST(N'2021-12-06' AS Date), 9, 11, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (23, CAST(N'2021-11-25' AS Date), 10, 12, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (24, CAST(N'2021-11-21' AS Date), 11, 13, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (25, CAST(N'2021-12-06' AS Date), 12, 14, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (26, CAST(N'2021-11-07' AS Date), 18, 15, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (27, CAST(N'2021-12-23' AS Date), 21, 16, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (28, CAST(N'2021-11-11' AS Date), 27, 19, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (29, CAST(N'2021-11-10' AS Date), 32, 23, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (30, CAST(N'2021-11-11' AS Date), 22, 17, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (31, CAST(N'2021-12-26' AS Date), 26, 18, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (32, CAST(N'2021-11-11' AS Date), 27, 19, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (33, CAST(N'2021-12-19' AS Date), 29, 20, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (34, CAST(N'2021-12-29' AS Date), 30, 21, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (35, CAST(N'2021-12-05' AS Date), 31, 22, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (36, CAST(N'2021-11-24' AS Date), 33, 24, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (37, CAST(N'2021-12-18' AS Date), 34, 25, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (38, CAST(N'2021-11-29' AS Date), 35, 26, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (39, CAST(N'2021-12-25' AS Date), 38, 27, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (40, CAST(N'2021-12-07' AS Date), 39, 28, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (41, CAST(N'2021-12-03' AS Date), 43, 29, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (42, CAST(N'2021-12-11' AS Date), 44, 30, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (43, CAST(N'2021-11-24' AS Date), 45, 31, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (44, CAST(N'2021-11-30' AS Date), 46, 32, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (45, CAST(N'2021-12-24' AS Date), 48, 33, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (46, CAST(N'2021-12-19' AS Date), 49, 34, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (47, CAST(N'2021-12-06' AS Date), 50, 35, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (48, CAST(N'2021-11-27' AS Date), 51, 36, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (49, CAST(N'2021-12-21' AS Date), 52, 37, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (50, CAST(N'2021-11-24' AS Date), 53, 38, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (51, CAST(N'2021-12-10' AS Date), 54, 39, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (52, CAST(N'2021-11-11' AS Date), 55, 40, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (53, CAST(N'2021-12-06' AS Date), 56, 41, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (54, CAST(N'2021-12-06' AS Date), 57, 42, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (55, CAST(N'2021-11-27' AS Date), 58, 43, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (56, CAST(N'2021-12-09' AS Date), 59, 44, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (57, CAST(N'2021-11-12' AS Date), 78, 45, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (58, CAST(N'2021-11-12' AS Date), 79, 46, 1)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (59, CAST(N'2021-11-10' AS Date), 80, 47, 10)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (60, CAST(N'2021-11-08' AS Date), 81, 48, 11)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (61, CAST(N'2021-12-31' AS Date), 82, 49, 12)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (62, CAST(N'2021-11-18' AS Date), 83, 50, 13)
INSERT [dbo].[Comprobante] ([Id_comprobante], [Fecha], [id_cliente], [id_detalle], [id_Trab]) VALUES (63, CAST(N'2021-12-10' AS Date), 90, 51, 1)
SET IDENTITY_INSERT [dbo].[Comprobante] OFF
SET IDENTITY_INSERT [dbo].[Detalle_comprobante] ON 

INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (1, 9, 1, 1, CAST(10.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (2, 16, 1, 2, CAST(40.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (3, NULL, 2, 3, CAST(35.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(38.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (4, 22, NULL, 1, CAST(40.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (5, NULL, 9, 2, CAST(167.00 AS Decimal(18, 2)), CAST(30.06 AS Decimal(18, 2)), CAST(197.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (6, 33, NULL, 1, CAST(27.96 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(33.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (7, 39, NULL, 1, CAST(33.10 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(38.10 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (8, NULL, 19, 1, CAST(21.10 AS Decimal(18, 2)), CAST(3.80 AS Decimal(18, 2)), CAST(24.90 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (9, NULL, 9, 1, CAST(83.40 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(98.40 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (10, 27, NULL, 1, CAST(29.66 AS Decimal(18, 2)), CAST(5.33 AS Decimal(18, 2)), CAST(34.99 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (11, NULL, 1, 1, CAST(20.34 AS Decimal(18, 2)), CAST(3.66 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (12, NULL, 20, 1, CAST(76.19 AS Decimal(18, 2)), CAST(13.71 AS Decimal(18, 2)), CAST(89.90 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (13, NULL, 7, 1, CAST(3.22 AS Decimal(18, 2)), CAST(0.58 AS Decimal(18, 2)), CAST(3.80 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (14, NULL, 14, 1, CAST(19.49 AS Decimal(18, 2)), CAST(3.51 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (15, NULL, 3, 1, CAST(10.17 AS Decimal(18, 2)), CAST(1.83 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (16, NULL, 8, 1, CAST(151.53 AS Decimal(18, 2)), CAST(27.27 AS Decimal(18, 2)), CAST(178.80 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (17, NULL, 13, 1, CAST(36.44 AS Decimal(18, 2)), CAST(6.56 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (18, NULL, 17, 1, CAST(195.59 AS Decimal(18, 2)), CAST(35.21 AS Decimal(18, 2)), CAST(230.80 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (19, NULL, 1, 1, CAST(20.34 AS Decimal(18, 2)), CAST(3.66 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (20, NULL, 10, 1, CAST(65.17 AS Decimal(18, 2)), CAST(11.73 AS Decimal(18, 2)), CAST(76.90 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (21, NULL, 19, 1, CAST(21.02 AS Decimal(18, 2)), CAST(3.78 AS Decimal(18, 2)), CAST(24.80 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (22, NULL, 15, 1, CAST(38.14 AS Decimal(18, 2)), CAST(6.86 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (23, NULL, 4, 1, CAST(4.66 AS Decimal(18, 2)), CAST(0.84 AS Decimal(18, 2)), CAST(5.50 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (24, NULL, 2, 1, CAST(19.07 AS Decimal(18, 2)), CAST(3.43 AS Decimal(18, 2)), CAST(22.50 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (25, NULL, 14, 1, CAST(19.49 AS Decimal(18, 2)), CAST(3.51 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (26, NULL, 11, 1, CAST(76.19 AS Decimal(18, 2)), CAST(13.71 AS Decimal(18, 2)), CAST(89.90 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (27, NULL, 6, 1, CAST(178.56 AS Decimal(18, 2)), CAST(32.14 AS Decimal(18, 2)), CAST(210.70 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (28, NULL, 17, 1, CAST(195.59 AS Decimal(18, 2)), CAST(35.21 AS Decimal(18, 2)), CAST(230.80 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (29, NULL, 14, 1, CAST(19.49 AS Decimal(18, 2)), CAST(3.51 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (30, NULL, 7, 1, CAST(3.22 AS Decimal(18, 2)), CAST(0.58 AS Decimal(18, 2)), CAST(3.80 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (31, NULL, 13, 1, CAST(36.44 AS Decimal(18, 2)), CAST(6.56 AS Decimal(18, 2)), CAST(41.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (32, NULL, 5, 2, CAST(93.22 AS Decimal(18, 2)), CAST(16.78 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (33, NULL, 12, 1, CAST(47.88 AS Decimal(18, 2)), CAST(8.62 AS Decimal(18, 2)), CAST(56.50 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (34, NULL, 19, 3, CAST(63.05 AS Decimal(18, 2)), CAST(11.35 AS Decimal(18, 2)), CAST(74.40 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (35, NULL, 7, 2, CAST(6.44 AS Decimal(18, 2)), CAST(1.16 AS Decimal(18, 2)), CAST(7.60 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (36, NULL, 2, 1, CAST(19.07 AS Decimal(18, 2)), CAST(3.43 AS Decimal(18, 2)), CAST(22.50 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (37, NULL, 14, 2, CAST(38.98 AS Decimal(18, 2)), CAST(7.02 AS Decimal(18, 2)), CAST(46.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (38, NULL, 19, 2, CAST(42.03 AS Decimal(18, 2)), CAST(7.57 AS Decimal(18, 2)), CAST(49.60 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (39, NULL, 11, 1, CAST(76.19 AS Decimal(18, 2)), CAST(13.71 AS Decimal(18, 2)), CAST(89.90 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (40, NULL, 5, 3, CAST(139.83 AS Decimal(18, 2)), CAST(25.17 AS Decimal(18, 2)), CAST(165.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (41, NULL, 15, 2, CAST(76.27 AS Decimal(18, 2)), CAST(13.73 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (42, NULL, 6, 3, CAST(535.68 AS Decimal(18, 2)), CAST(96.42 AS Decimal(18, 2)), CAST(632.10 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (43, NULL, 14, 2, CAST(38.98 AS Decimal(18, 2)), CAST(7.02 AS Decimal(18, 2)), CAST(46.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (44, NULL, 13, 1, CAST(36.44 AS Decimal(18, 2)), CAST(6.56 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (45, NULL, 18, 3, CAST(228.56 AS Decimal(18, 2)), CAST(41.14 AS Decimal(18, 2)), CAST(269.70 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (46, NULL, 13, 1, CAST(36.44 AS Decimal(18, 2)), CAST(6.56 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (47, NULL, 16, 3, CAST(307.37 AS Decimal(18, 2)), CAST(55.33 AS Decimal(18, 2)), CAST(362.70 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (48, NULL, 12, 2, CAST(95.76 AS Decimal(18, 2)), CAST(17.24 AS Decimal(18, 2)), CAST(113.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (49, NULL, 16, 3, CAST(307.37 AS Decimal(18, 2)), CAST(55.33 AS Decimal(18, 2)), CAST(362.70 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (50, NULL, 3, 1, CAST(10.17 AS Decimal(18, 2)), CAST(1.83 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[Detalle_comprobante] ([id_detalle], [id_servicio], [id_producto], [cantidad], [subtotal], [igv], [total]) VALUES (51, NULL, 13, 3, CAST(109.32 AS Decimal(18, 2)), CAST(19.68 AS Decimal(18, 2)), CAST(129.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Detalle_comprobante] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (1, N'Laca Elegance Ecológica Liheto 380ml', CAST(24.00 AS Decimal(18, 2)), CAST(N'2022-12-20' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (2, N'Laca Angolac Triple Fuerte Liheto 750ml', CAST(22.50 AS Decimal(18, 2)), CAST(N'2023-06-09' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (3, N'Champú Liheto Neutro 1000ml', CAST(12.00 AS Decimal(18, 2)), CAST(N'2022-05-05' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (4, N'Guantes Desechables Fama Fabré 100ud', CAST(5.50 AS Decimal(18, 2)), CAST(N'2022-04-10' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (5, N'Kerastase Specifique Bain Prevention 250ml', CAST(55.00 AS Decimal(18, 2)), CAST(N'2023-07-06' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (6, N'Wahl Magic Clip Fades 5 Star Series Máquina Cortapelo', CAST(210.70 AS Decimal(18, 2)), CAST(N'2023-03-12' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (7, N'Dosificador Generico Champú/Acondicionador Eurex 1000ml', CAST(3.80 AS Decimal(18, 2)), CAST(N'2023-05-12' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (8, N'Kerastase Chronologiste Bain Régénérant 1000ml', CAST(178.80 AS Decimal(18, 2)), CAST(N'2023-11-13' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (9, N'Kerastase Elixir Ultime Original 100ml', CAST(98.50 AS Decimal(18, 2)), CAST(N'2022-08-23' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (10, N'Kerastase Specifique Bain Divalent 250ml', CAST(76.90 AS Decimal(18, 2)), CAST(N'2022-08-21' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (11, N'Kerastase Résistance Ciment Thermique 150ml', CAST(89.90 AS Decimal(18, 2)), CAST(N'2022-06-25' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (12, N'Kerastase Soleil Bain Apres-Soleil 250ml', CAST(56.50 AS Decimal(18, 2)), CAST(N'2022-12-25' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (13, N'Kerastase Specifique Bain Vital 250ml', CAST(43.00 AS Decimal(18, 2)), CAST(N'2023-08-13' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (14, N'Tintes Color Touch Wella 60ml', CAST(23.00 AS Decimal(18, 2)), CAST(N'2022-02-01' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (15, N'Kerastase Specifique Bain Anti-Pelliculaire 250ml', CAST(45.00 AS Decimal(18, 2)), CAST(N'2022-06-13' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (16, N'Kerastase Resistance Force Architecte Bain 250ml', CAST(120.90 AS Decimal(18, 2)), CAST(N'2022-09-06' AS Date), N'--')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (17, N'Wahl Detailer T-Wide Máquina Cortapelo', CAST(230.80 AS Decimal(18, 2)), CAST(N'2022-04-12' AS Date), N'--')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (18, N'Kerastase Discipline Bain Fluidealiste Gentle 1000ml', CAST(89.90 AS Decimal(18, 2)), CAST(N'2023-12-28' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (19, N'Broaer laca color negro 200ml	', CAST(24.80 AS Decimal(18, 2)), CAST(N'2022-08-28' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (20, N'Kerastase Densifique Bain Densité 1000ml', CAST(89.90 AS Decimal(18, 2)), CAST(N'2022-01-26' AS Date), N'-')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (21, N'Shampoo con Minoxidil 250 ml', CAST(120.00 AS Decimal(18, 2)), CAST(N'2022-12-10' AS Date), N'')
INSERT [dbo].[Productos] ([Id_producto], [Nombre_Producto], [Precio_venta], [fecha_vencimiento], [comentarios]) VALUES (22, N'x', CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-12-10' AS Date), N'-')
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[Proveedor] ON 

INSERT [dbo].[Proveedor] ([Id_proveedor], [Nom_proveedor], [Dir_proveedor], [Tipo_proveedor]) VALUES (1, N'Esika', N'Bogota', 2)
INSERT [dbo].[Proveedor] ([Id_proveedor], [Nom_proveedor], [Dir_proveedor], [Tipo_proveedor]) VALUES (2, N'Avon', N'Lima zona comercio', 2)
INSERT [dbo].[Proveedor] ([Id_proveedor], [Nom_proveedor], [Dir_proveedor], [Tipo_proveedor]) VALUES (3, N'nature', N'lima san isidro', 2)
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
SET IDENTITY_INSERT [dbo].[Servicio] ON 

INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (9, N'Corte de dama ', CAST(30.00 AS Decimal(18, 2)), NULL, 1)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (16, N'Corte de Caballero', CAST(20.00 AS Decimal(18, 2)), NULL, 2)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (17, N'Corte de niño o niña', CAST(15.00 AS Decimal(18, 2)), NULL, 3)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (22, N'Cepillado corto ', CAST(30.00 AS Decimal(18, 2)), NULL, 11)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (23, N'Cepillado Largo', CAST(40.00 AS Decimal(18, 2)), NULL, 11)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (24, N'Planchado corto', CAST(40.00 AS Decimal(18, 2)), NULL, 12)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (25, N'Planchado largo', CAST(50.00 AS Decimal(18, 2)), NULL, 12)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (26, N'Tinturacion de cabello corto', CAST(60.00 AS Decimal(18, 2)), NULL, 4)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (27, N'Tinturacion de cabello largo', CAST(100.00 AS Decimal(18, 2)), NULL, 4)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (28, N'Manicure oppi ', CAST(15.00 AS Decimal(18, 2)), NULL, 5)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (29, N'Manicure oppi gel', CAST(30.00 AS Decimal(18, 2)), NULL, 5)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (30, N'Pedicure oppi', CAST(20.00 AS Decimal(18, 2)), NULL, 6)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (31, N'Pedicure oppi gel', CAST(35.00 AS Decimal(18, 2)), NULL, 6)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (32, N'Depilacion ceja-cera', CAST(15.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (33, N'Depilacion ceja-hilo', CAST(20.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (34, N'Depilacion ceja-pinza', CAST(10.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (35, N'Perfilado y planchado de cejas', CAST(30.00 AS Decimal(18, 2)), NULL, 8)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (36, N'Pestañas postizas 3x3', CAST(35.00 AS Decimal(18, 2)), NULL, 8)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (37, N'Pestañas postizas 1x1', CAST(50.00 AS Decimal(18, 2)), NULL, 8)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (38, N'Depilacion Bozo Cera/Hilo', CAST(20.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (39, N'Depilacion rostro cera', CAST(35.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (40, N'Depilacion rostro hilo', CAST(40.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (41, N'Depilacion media pierna ', CAST(30.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (42, N'Deoilacion axila', CAST(20.00 AS Decimal(18, 2)), NULL, 7)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (43, N'Tratamiento capilar tec italy', CAST(45.00 AS Decimal(18, 2)), NULL, 9)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (44, N'Botox y alizados organicos ', CAST(100.00 AS Decimal(18, 2)), N'Tratamiento con previo diagnostico capilar', 10)
INSERT [dbo].[Servicio] ([Id_servicio], [Nombre_serv], [Precio_serv], [Descripcion_serv], [Id_tipo]) VALUES (45, N'x', CAST(10.00 AS Decimal(18, 2)), N'-', 1)
SET IDENTITY_INSERT [dbo].[Servicio] OFF
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (1, N'Corte de Cabello varon ', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (2, N'Corte de cabello mujer', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (3, N'Corte de cabello Niños', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (4, N'Tinturado', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (5, N'Manicure', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (6, N'Pedicure', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (7, N'Depilado', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (8, N'Perfilado', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (9, N'Tratamientos', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (10, N'Alisados', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (11, N'Cepillado', N'-')
INSERT [dbo].[Tipo_servicio] ([Id_tipo], [Nombre], [Comentario]) VALUES (12, N'Planchado', N'-')
SET IDENTITY_INSERT [dbo].[Trabajador] ON 

INSERT [dbo].[Trabajador] ([Id_trabajador], [Nombre_trab], [Apellido_trab], [Documento_trab], [Fecha_nacimiento], [Direccion_trab], [Area_trab]) VALUES (1, N'oscar andres', N'moran seminario', N'71082383', CAST(N'2000-06-18' AS Date), N'urb. monterrico', N'2')
INSERT [dbo].[Trabajador] ([Id_trabajador], [Nombre_trab], [Apellido_trab], [Documento_trab], [Fecha_nacimiento], [Direccion_trab], [Area_trab]) VALUES (10, N'Mario ', N'Hurtado Pintado', N'73631212', CAST(N'1995-05-08' AS Date), N'Av.Loreto N 345', N'3')
INSERT [dbo].[Trabajador] ([Id_trabajador], [Nombre_trab], [Apellido_trab], [Documento_trab], [Fecha_nacimiento], [Direccion_trab], [Area_trab]) VALUES (11, N'Fatima Andrea', N'Rosas Gutierrez', N'71207245', CAST(N'1999-09-02' AS Date), N'Centro de madrigueras', N'3')
INSERT [dbo].[Trabajador] ([Id_trabajador], [Nombre_trab], [Apellido_trab], [Documento_trab], [Fecha_nacimiento], [Direccion_trab], [Area_trab]) VALUES (12, N'Joselyn camila', N'Cabello Trelles', N'73728016', CAST(N'1998-02-19' AS Date), N'Paso de Glacier Hill', N'3')
INSERT [dbo].[Trabajador] ([Id_trabajador], [Nombre_trab], [Apellido_trab], [Documento_trab], [Fecha_nacimiento], [Direccion_trab], [Area_trab]) VALUES (13, N'Claudia', N'Takeuchi Gouro', N'73464792', CAST(N'1990-04-30' AS Date), N'Amazonas 335 Pachitea', N'1')
SET IDENTITY_INSERT [dbo].[Trabajador] OFF
ALTER TABLE [dbo].[Comprobante]  WITH CHECK ADD  CONSTRAINT [FK_Comprobante_Cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([Id_cliente])
GO
ALTER TABLE [dbo].[Comprobante] CHECK CONSTRAINT [FK_Comprobante_Cliente]
GO
ALTER TABLE [dbo].[Comprobante]  WITH CHECK ADD  CONSTRAINT [FK_Comprobante_Detalle_comprobante] FOREIGN KEY([id_detalle])
REFERENCES [dbo].[Detalle_comprobante] ([id_detalle])
GO
ALTER TABLE [dbo].[Comprobante] CHECK CONSTRAINT [FK_Comprobante_Detalle_comprobante]
GO
ALTER TABLE [dbo].[Comprobante]  WITH CHECK ADD  CONSTRAINT [FK_Comprobante_Trabajador] FOREIGN KEY([id_Trab])
REFERENCES [dbo].[Trabajador] ([Id_trabajador])
GO
ALTER TABLE [dbo].[Comprobante] CHECK CONSTRAINT [FK_Comprobante_Trabajador]
GO
ALTER TABLE [dbo].[Detalle_comprobante]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_comprobante_Productos1] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([Id_producto])
GO
ALTER TABLE [dbo].[Detalle_comprobante] CHECK CONSTRAINT [FK_Detalle_comprobante_Productos1]
GO
ALTER TABLE [dbo].[Detalle_comprobante]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_comprobante_Servicio] FOREIGN KEY([id_servicio])
REFERENCES [dbo].[Servicio] ([Id_servicio])
GO
ALTER TABLE [dbo].[Detalle_comprobante] CHECK CONSTRAINT [FK_Detalle_comprobante_Servicio]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Tipo_servicio] FOREIGN KEY([Id_tipo])
REFERENCES [dbo].[Tipo_servicio] ([Id_tipo])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Tipo_servicio]
GO
USE [master]
GO
ALTER DATABASE [spa clase] SET  READ_WRITE 
GO
