USE [DM_JIMDUR]
GO
/****** Object:  Table [dbo].[DIM_CLIENTE]    Script Date: 20/01/2022 20:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_CLIENTE](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[departamento] [varchar](50) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[distrito] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DIM_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_PRODUCTO]    Script Date: 20/01/2022 20:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_PRODUCTO](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[categoria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DIM_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_TIEMPO]    Script Date: 20/01/2022 20:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_TIEMPO](
	[id_tiempo] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[dia] [int] NOT NULL,
	[semana] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[anio] [int] NOT NULL,
 CONSTRAINT [PK_DIM_TIEMPO] PRIMARY KEY CLUSTERED 
(
	[id_tiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HECHO_VENTA]    Script Date: 20/01/2022 20:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HECHO_VENTA](
	[cliente_id] [int] NOT NULL,
	[tiempo_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[monto_venta] [float] NOT NULL,
	[cantidad_venta] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DIM_CLIENTE] ON 
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (151, N'A B MODULAR S.A.C.', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (152, N'ABAD JIMENEZ JUAN', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (153, N'ABAD NUÑEZ FRANKLIN', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (154, N'ABENDAÑO AGUILAR JACKS ARMANDO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (155, N'ABENDAÑO AGUILAR MARLY YASENIA', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (156, N'ABNER ROSILLO ABAD', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (157, N'ADANAQUE CALLE JESUS FRANCISCO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (158, N'AGUA EXITO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (159, N'ALBITES ESPINOZA VICTOR JONATAN', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (160, N'ALBURQUEQUE HERRERA LUZ MARIA', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (161, N'ALDIZA CONSTRUCTORES SOCIEDAD ANÓNIMA CERRADA', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (162, N'ALIMENTOS ANDINOS P & A E.I.R.L.', N'PIURA', N'AYABACA', N'PAIMAS')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (163, N'ALTAMAREA SEAFOOD E.I.R.L.', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (164, N'ALVARADO CHECA ROBERTO CARLOS', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (165, N'ANICETO CORDOVA ERIKA', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (166, N'APOLO CERNA LABY HELENN', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (167, N'AREVALO ARROYO ISMAEL ALBERTO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (168, N'ARTEMIO SANTOS', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (169, N'AUGUSTO CARRASCO GONZALES EIRL', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (170, N'B2B PIURA E.I.R.L.', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (171, N'BALLADARES FLORES JUNIOR', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (172, N'BARCO HUAMAN DAVID FERNANDO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (173, N'BIENES Y SERVICIOS GENERALES ESTEFANY E.I.R.L.', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (174, N'BURNEO SAAVEDRA LUIS FERNANDO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (175, N'C & M CONSTRUCTORES Y MAQUINARIA SRL', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (176, N'CALLE AGUILAR LEWIS ROD', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (177, N'CALLE CANGO RODOLFO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (178, N'CAMIZAN RAMIREZ SEGUNDO JULIAN', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (179, N'CARHUAPOMA GARCIA RAUL', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (180, N'CARLOS MORE', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (181, N'CARMEN SILVIA JIMENEZ', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (182, N'CARMEN SOSA CARLOS AUGUSTO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (183, N'CARRANZA ALARCON LUIS GODOFREDO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (184, N'CARREÑO DELGADO LUIS ALBERTO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (185, N'CASTILLO CALLE JULIO CESAR', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (186, N'CASTILLO MURILLO FELIX SEGUNDO', N'PIURA', N'PIURA', N'26 DE OCTUBRE')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (187, N'CASTILLO RIJALBA SEGUNDO ANTONIO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (188, N'CASTRO NAVARRO MARIELLA ROSA ELIZABETH', N'PIURA', N'PIURA', N'26 DE OCTUBRE')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (189, N'CENTRAL PERU S.A', N'LIMA', N'LIMA', N'LINCE')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (190, N'CERRO VEGAS ADAN', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (191, N'CESAR MEDINA', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (192, N'CHANDUVI RIVAS WILFREDO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (193, N'CHANTA HUAMAN SEGUNDO GREGORIO', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (194, N'CHAVEZ MORALES JHON YERAL', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (195, N'CHERO NAVARRO EDITH NOEMI', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (196, N'CLASES DE MANEJO PIURA E.I.R.L.', N'PIURA', N'PIURA', N'CASTILLA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (197, N'COESTI S.A.', N'LIMA', N'LIMA', N'SANTIAGO DE SURCO')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (198, N'COMERCIAL & INVERSIONES LISBET EIRL', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (199, N'COMERCIALIZADORA COLAVI S.A.C.', N'PIURA', N'PIURA', N'PIURA')
GO
INSERT [dbo].[DIM_CLIENTE] ([id_cliente], [nombre], [departamento], [provincia], [distrito]) VALUES (200, N'COMERCIALIZADORA SAN MIGUEL DE PIURA EIRL', N'PIURA', N'PIURA', N'PIURA')
GO
SET IDENTITY_INSERT [dbo].[DIM_CLIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[DIM_PRODUCTO] ON 
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (391, N'ACCESORIOS DE CARBURADOR CG125/ C/FLOTADOR RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (392, N'ACCESORIOS DE CARBURADOR CG150 / C/FLOTADOR RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (393, N'ACEITE 2 TIEMPOS CASTROL - COJIN', N'LUBRICANTE')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (394, N'ACEITE BJR 25W60', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (395, N'ACEITE DE TRANSMISION 140 VISTONY', N'LUBRICANTE')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (396, N'ACEITE MOBIL 4T 25W50', N'LUBRICANTE')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (397, N'ACEITE MOTUL 5100 15W50', N'LUBRICANTE')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (398, N'ACEITE SHELL 50 MONOGRADO', N'LUBRICANTE')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (399, N'ACEITE SHELL HELIX 20W50', N'LUBRICANTE')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (400, N'AGUA CON ACIDO PARA BATERIA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (401, N'ALTERNADOR 125/150 KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (402, N'ALTERNADOR CG125 ULTRA (HONDA CHINA) KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (403, N'AMORTIGUADOR POSTERIOR GL125 KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (404, N'ARRANCADOR CG250 9T - 14MM', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (405, N'BAQUELITA DE CARBURADOR C110 BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (406, N'BAQUELITA DE CARBURADOR CG150/125', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (407, N'BARRA TELESCOPICA C110 WX SOLAS RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (408, N'BARRA TELESCOPICA GL125  SOLA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (409, N'BARRA TELESCOPICA GL-125 PREMIER COMPLETA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (410, N'BRAZO DE FRENO POST GL125 CROMADO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (411, N'BRIDA DE CARBURADOR HONGJU CG125/150  CON PIN', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (412, N'BUJE DE BOCAMASA GL-125', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (413, N'BUJIA DP8EA-9  CG-125/GL NGK', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (414, N'CABEZAL COMPLETO CG125 S/EJE DE LEVAS', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (415, N'CABEZAL COMPLETO CG150  WX150 BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (416, N'CABEZAL COMPLETO DAX 70 KIGCOL', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (417, N'CABLE DE ACELERADOR BROSS/GY150 RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (418, N'CABLE DE ACELERADOR CARGUERO 2 CABLES RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (419, N'CABLE DE ACELERADOR GL/CG HONGJU', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (420, N'CABLE DE EMBRAGUE CARGUERO BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (421, N'CABLE DE EMBRAGUE GL-125 HONGJU', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (422, N'CABLE DE FRENO DELANTERO CARGUERO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (423, N'CABLE DE FRENO GL-125 SUMOTO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (424, N'CAJA DE CAMBIO WX 150 RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (425, N'CAJA DE RETROCESO CARGUERO 17MM BJR GRISS', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (426, N'CAJA DE RETROCESO CARGUERO 20MM BJR GRISS', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (427, N'CAMARA DURO 300-18 POST', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (428, N'CANDADO DE CADENA 428', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (429, N'CAPUCHON DE BUJIA FZ16 BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (430, N'CAPUCHON DE BUJIA RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (431, N'CAPUCHON DE BUJIA UNICORD/SCOOTER NEGRA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (432, N'CARBURADOR CG250/300 BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (433, N'CATALINA 36T MR-428', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (434, N'CATALINA 43T YAMAHA SFX', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (435, N'CDI CARGUERO TRIFASICO 6 SALIDAS KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (436, N'CHANCHITO DE ARRANQUE BJR/TVR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (437, N'CHAPA DE CONTACTO GL-125 BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (438, N'CHAPA DE CONTACTO MODEL. ZS BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (439, N'CHAPA DE CONTACTO WAVE 110 4 CABLES BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (440, N'CIGUEÑAL C100 COMPLETO CHINAS - KIGCOL', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (441, N'CIGUEÑAL CG-150 KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (442, N'CIGUEÑAL SCOOTER/GY6 COMPLETO KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (443, N'CILINDRO COMPLETO CG -150 TVR', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (444, N'CILINDRO COMPLETO CG150 KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (445, N'CILINDRO COMPLETO CG250 67 KIGCOL AIRE', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (446, N'CILINDRO COMPLETO CG250 KIGCOL ENFRIADO POR AGUA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (447, N'CILINDRO COMPLETO SCOOTER 125 RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (448, N'CILINDRO COMPLETO SCOOTER 150 TOMOTO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (449, N'CINTA REFLECTIVA 3M 1/2 METRO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (450, N'CLAXON CG125  HORN', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (451, N'COMANDO DERECHO GL125 PREMIER', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (452, N'COPA CENTRIFUGA CG-125/150 KIGCOL-TVR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (453, N'CREMALLERA COMPLETA 110 RCC', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (454, N'CREMALLERA COMPLETA CG250 18T - 73T KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (455, N'CREMALLERA COMPLETA CG-250 6 PINES 7 DISCOS 70T RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (456, N'EJE DE CAMBIO COMPLETO CG-125/150/200 C/PUNTA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (457, N'EJE DE TRAPECIO CB125 ACERADO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (458, N'EJE POSTERIOR CG125 ACERADO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (459, N'EJE POSTERIOR GL125', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (460, N'EMPAQUE DE EMBRAGUE C110', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (461, N'EMPAQUE DE TUBO DE ESCAPE BRONCE', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (462, N'EMPAQUE DE VOLANTE C/ARRANCADOR AB MOTORS', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (463, N'ESPARRAGO DE TUBO DE ESCAPE  M6', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (464, N'ESPARRAGO TUBO DE ESCAPE FURGON', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (465, N'ESPEJO RETROVISOR WANXIN MR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (466, N'FARO DIRECCIONAL GL BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (467, N'FARO POSTERIOR C/DIRECCIONAL AMARILLO WX', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (468, N'FARO POSTERIOR CARGUERO LED JMD', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (469, N'FARO POSTERIOR STOP BICOLOR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (470, N'FARO POSTERIOR STOP CG-125', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (471, N'FILTRO DE ACEITE MALLA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (472, N'FILTRO DE AIRE CARGUERO/FURGON RECTO RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (473, N'FILTRO DE AIRE COMPLETO CARGUERO CURVO KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (474, N'FLASHER C/SONIDO SUMOTO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (475, N'FOCO DELANTERO HALOGENO H4 12V35/35 BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (476, N'FUSIBLE DE UÑA 20A', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (477, N'GRASA PEQUEÑA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (478, N'GRIFO DE GASOLINA CG125/150 RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (479, N'GRIFO DE GASOLINA HILO FINO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (480, N'KIT EMPAQUE DE CABEZO CG150 KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (481, N'KIT EMPAQUE DE CABEZO CG-200 KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (482, N'KIT EMPAQUE DE MOTOR CG-125 KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (483, N'KIT PERNOS CATALINA BUJE DE JEBE', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (484, N'KIT PERNOS CATALINA WX', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (485, N'KIT RETEN MOTOR WILLY BUSH', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (486, N'LIMPIA CARBURADOR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (487, N'LIQUIDO DE FRENO 8 ONZAS VISTONI', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (488, N'LIQUIDO DE FRENO VECSOL 4 ONZAS', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (489, N'LLANTA DE CARGUERO 500-12 KINGSTONE TRACTOR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (490, N'MANGUERA DE GASOLINA POR METRO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (491, N'MANUBRIO GL125 C/TUBO DE ACELERADOR BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (492, N'OJO DE AGUILA ROJO/AZUL/BLANCO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (493, N'ORRIN DE TAPA DE ACEITE KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (494, N'PASTILLA DE FRENO C110 GY150/200 TOMOTO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (495, N'PASTILLA DE FRENO GY200 DELANT REDONDA 3 ESTRELLAS KIGCOL', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (496, N'PEDAL DE ARRANQUE', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (497, N'PEDAL DE CAMBIO BROSS/GY RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (498, N'PEDAL DE CAMBIO PIN LARGO CARGUERO KIGCOL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (499, N'PEDAL DE FRENO C-110', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (500, N'PEDAL DE FRENO GL', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (501, N'PINTURA SPRAY DORADO BRILLANTE', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (502, N'PINTURA SPRAY NEGRO BRILLANTE', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (503, N'PIÑON DE ARRASTRE 14T C110 428 MR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (504, N'RAMAL ELECTRICO FURGON PREMIER', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (505, N'RETEN DE ARRASTRE (20-34-7)', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (506, N'RODAJE HYZ 6302', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (507, N'RODAJE SCP 6202', N'REPUESTOS')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (508, N'RODAJE SCP 6302', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (509, N'SILICONA LIQUIDA GRANDE KURSAWA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (510, N'SILICONA LIQUIDA PEQUEÑA KURSAWA', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (511, N'SOLDEMIX INSTATEO SUPER GLU', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (512, N'SWICH DE FRENO', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (513, N'TAPA DE ACEITE ECONOMICA BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (514, N'TAPA DE TANQUE BROSS BJR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (515, N'TAPABARRO DELANTERO C110 ROJO C/ACCESORIOS', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (516, N'VENTIX COMPLETO CG200 20 PINES RCC', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (517, N'ZAPATA DE FRENO  GL-125 TVR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (518, N'ZAPATA DE FRENO DT-125 EDE', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (519, N'ZAPATA DE FRENO DT-125 TVR', N'ACCESORIO')
GO
INSERT [dbo].[DIM_PRODUCTO] ([id_producto], [nombre], [categoria]) VALUES (520, N'ZAPATA DE FRENO POST. 220 MM CARGUERO TVR', N'ACCESORIO')
GO
SET IDENTITY_INSERT [dbo].[DIM_PRODUCTO] OFF
GO
SET IDENTITY_INSERT [dbo].[DIM_TIEMPO] ON 
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (37, CAST(N'2021-11-02' AS Date), 2, 45, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (38, CAST(N'2021-11-03' AS Date), 3, 45, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (39, CAST(N'2021-11-04' AS Date), 4, 45, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (40, CAST(N'2021-11-05' AS Date), 5, 45, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (41, CAST(N'2021-11-08' AS Date), 8, 46, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (42, CAST(N'2021-11-09' AS Date), 9, 46, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (43, CAST(N'2021-11-10' AS Date), 10, 46, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (44, CAST(N'2021-11-11' AS Date), 11, 46, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (45, CAST(N'2021-11-12' AS Date), 12, 46, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (46, CAST(N'2021-11-13' AS Date), 13, 46, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (47, CAST(N'2021-11-15' AS Date), 15, 47, 11, 2021)
GO
INSERT [dbo].[DIM_TIEMPO] ([id_tiempo], [fecha], [dia], [semana], [mes], [anio]) VALUES (48, CAST(N'2021-11-16' AS Date), 16, 47, 11, 2021)
GO
SET IDENTITY_INSERT [dbo].[DIM_TIEMPO] OFF
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (160, 37, 398, 57, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (160, 37, 397, 82.5, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 37, 478, 54, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 37, 488, 31.2, 8)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 37, 487, 47.92, 8)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 37, 486, 41.16, 4)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 37, 434, 47.6, 4)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (158, 38, 399, 114, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (158, 38, 395, 144, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (158, 38, 396, 105, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (158, 38, 397, 165, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (166, 38, 398, 22, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (157, 39, 397, 60, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (157, 39, 465, 7.5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (157, 39, 488, 5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (157, 39, 475, 5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (168, 39, 398, 14, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 404, 194.70000000000002, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 453, 192, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 428, 50, 100)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 418, 25.200000000000003, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 439, 48, 4)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 416, 194.9, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 448, 121, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 440, 147.8, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 415, 260.9, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (171, 39, 438, 42.599999999999994, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (177, 40, 399, 117.50399999999999, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (161, 40, 399, 115, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (162, 40, 465, 7.5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (178, 40, 426, 426, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (156, 41, 496, 10, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 519, 67, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 517, 67, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 518, 121, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 401, 124.94999999999999, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 403, 142, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 437, 98.4, 8)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 436, 43.5, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 413, 55, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 410, 19.5, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 457, 19.950000000000003, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 458, 24.75, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 459, 25.5, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 463, 13.799999999999999, 20)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 450, 24.75, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 423, 42, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 396, 420, 24)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (175, 41, 397, 330, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (179, 41, 398, 292.008, 24)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (162, 41, 396, 38, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (162, 41, 471, 1, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (162, 41, 479, 6, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (162, 41, 461, 1, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 41, 425, 155, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 41, 395, 49.5, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 41, 498, 12, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 41, 489, 310, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 41, 399, 23, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 41, 477, 1.5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (155, 42, 396, 105, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (155, 42, 399, 117.49980000000001, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (161, 43, 393, 10.5, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 432, 250, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 422, 25, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 420, 24.5, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 451, 44, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 468, 100, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 472, 67.5, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 520, 60, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 43, 426, 284, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (160, 43, 468, 25, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (160, 43, 501, 7, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (160, 43, 514, 14.5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (160, 43, 422, 6, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (160, 43, 512, 2.5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 402, 30.99, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 401, 24.99, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 410, 23.4, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 417, 17.94, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 430, 14.399999999999999, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 429, 40.8, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 431, 25.200000000000003, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 436, 26.099999999999998, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 452, 21.6, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 480, 26.400000000000002, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 481, 26.400000000000002, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 461, 6.6000000000000005, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 463, 8.28, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 464, 8.52, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 466, 15.2, 4)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 467, 34.4, 4)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 474, 24.599999999999998, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 491, 21.6, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 495, 35.94, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 494, 29.94, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 497, 33.900000000000006, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 484, 17.94, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 485, 77.4, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 398, 146.39999999999998, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 486, 61.739999999999995, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 510, 23.700000000000003, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 509, 45.599999999999994, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 411, 35.339999999999996, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 406, 6, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 405, 6, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 493, 3.3600000000000003, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 483, 17.700000000000003, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 469, 19.2, 4)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 470, 15.96, 4)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 43, 400, 8.3999999999999986, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (172, 44, 399, 117.49799999999999, 6)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (165, 44, 502, 7, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (154, 45, 504, 44, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (154, 45, 394, 18, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 507, 53.75, 25)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 508, 74.75, 25)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 435, 79.5, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 476, 18, 100)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (180, 45, 397, 30, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (174, 45, 396, 210, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (174, 45, 399, 234.99599999999998, 12)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 408, 357, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 409, 159.9, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 421, 89.7, 30)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 412, 70, 40)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 447, 100, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 454, 152.2, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (164, 45, 494, 24.950000000000003, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (153, 45, 446, 260, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (153, 45, 516, 59.8, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (153, 45, 455, 70.5, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (165, 46, 499, 29.97, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (165, 46, 433, 27.900000000000002, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (165, 46, 503, 8.97, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (173, 46, 442, 92, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (173, 46, 460, 27, 15)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (169, 46, 407, 68, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (169, 46, 515, 26, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (159, 47, 449, 73.8, 20)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (159, 47, 490, 5.6, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 47, 506, 8, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (163, 47, 419, 4, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (181, 47, 445, 333.6, 3)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (152, 47, 516, 34, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (152, 47, 462, 2, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 47, 520, 87.2, 8)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (167, 47, 498, 22.2, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (182, 47, 444, 180.4, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (182, 47, 443, 154, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 47, 424, 167.2, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 47, 441, 228.8, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 47, 456, 108, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 47, 391, 44, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 47, 392, 44, 5)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 47, 492, 174, 20)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (170, 47, 447, 100, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (176, 47, 427, 102.4, 8)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (183, 47, 414, 288, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (183, 47, 482, 12, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (183, 47, 505, 3, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (183, 47, 396, 19, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (183, 47, 500, 10, 1)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (151, 48, 398, 288, 24)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (151, 48, 513, 27, 15)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (166, 48, 432, 96, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (166, 48, 473, 27, 2)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (166, 48, 420, 48.5, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (166, 48, 422, 47, 10)
GO
INSERT [dbo].[HECHO_VENTA] ([cliente_id], [tiempo_id], [producto_id], [monto_venta], [cantidad_venta]) VALUES (166, 48, 511, 1, 1)
GO
ALTER TABLE [dbo].[HECHO_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_HECHO_VENTA_DIM_CLIENTE] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[DIM_CLIENTE] ([id_cliente])
GO
ALTER TABLE [dbo].[HECHO_VENTA] CHECK CONSTRAINT [FK_HECHO_VENTA_DIM_CLIENTE]
GO
ALTER TABLE [dbo].[HECHO_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_HECHO_VENTA_DIM_PRODUCTO] FOREIGN KEY([producto_id])
REFERENCES [dbo].[DIM_PRODUCTO] ([id_producto])
GO
ALTER TABLE [dbo].[HECHO_VENTA] CHECK CONSTRAINT [FK_HECHO_VENTA_DIM_PRODUCTO]
GO
ALTER TABLE [dbo].[HECHO_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_HECHO_VENTA_DIM_TIEMPO] FOREIGN KEY([tiempo_id])
REFERENCES [dbo].[DIM_TIEMPO] ([id_tiempo])
GO
ALTER TABLE [dbo].[HECHO_VENTA] CHECK CONSTRAINT [FK_HECHO_VENTA_DIM_TIEMPO]
GO
