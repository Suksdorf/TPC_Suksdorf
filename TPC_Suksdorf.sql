USE [master]
GO
/****** Object:  Database [SUKSDORF_DB]    Script Date: 11/25/2018 20:04:12 ******/
CREATE DATABASE [SUKSDORF_DB]

ALTER DATABASE [SUKSDORF_DB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SUKSDORF_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SUKSDORF_DB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET ARITHABORT OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SUKSDORF_DB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SUKSDORF_DB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SUKSDORF_DB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET  ENABLE_BROKER
GO
ALTER DATABASE [SUKSDORF_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SUKSDORF_DB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SUKSDORF_DB] SET  READ_WRITE
GO
ALTER DATABASE [SUKSDORF_DB] SET RECOVERY FULL
GO
ALTER DATABASE [SUKSDORF_DB] SET  MULTI_USER
GO
ALTER DATABASE [SUKSDORF_DB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SUKSDORF_DB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'SUKSDORF_DB', N'ON'
GO
USE [SUKSDORF_DB]
GO
/****** Object:  Table [dbo].[Jornada]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jornada](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Jornada] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Jornada] ON
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (8, CAST(0x0000A99A00000000 AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (9, CAST(0x0000A99A00000000 AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (10, CAST(0x0000A99A00000000 AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (11, CAST(0x0000A99A015A55E5 AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (12, CAST(0x0000A99B01793E5F AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (13, CAST(0x0000A99B017D41BB AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (14, CAST(0x0000A99C0000F249 AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (15, CAST(0x0000A99C000FAEF9 AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (16, CAST(0x0000A9A0018726D0 AS DateTime))
INSERT [dbo].[Jornada] ([Id], [fecha]) VALUES (17, CAST(0x0000A9A100DC76C8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Jornada] OFF
/****** Object:  Table [dbo].[DIRECCIONES]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIRECCIONES](
	[Id] [int] NOT NULL,
	[Calle] [nchar](10) NULL,
	[Altura] [int] NULL,
	[IdLocalidad] [int] NULL,
	[IdProvincia] [int] NULL,
 CONSTRAINT [PK_DIRECCIONES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDORES]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDORES](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Descripcion] [nchar](100) NULL,
	[Direccion] [nchar](50) NULL,
	[Telefono] [nchar](20) NULL,
	[Mail] [nchar](50) NULL,
	[Horario] [nchar](50) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_PROVEEDORES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PROVEEDORES] ON
INSERT [dbo].[PROVEEDORES] ([Id], [Nombre], [Descripcion], [Direccion], [Telefono], [Mail], [Horario], [Estado]) VALUES (1, N'El irlandes borracho                              ', N'Provee cervezas                                                                                     ', N'Calle                                             ', N'0223485570          ', N'ventas@elirlandesborracho.com                     ', N'L a V 10 a 17                                     ', 1)
INSERT [dbo].[PROVEEDORES] ([Id], [Nombre], [Descripcion], [Direccion], [Telefono], [Mail], [Horario], [Estado]) VALUES (2, N'Todo Quesos                                       ', N'Proveedor de los quesos de primera calidad, pero más caro                                           ', N'Pampa 1402, Boulogne                              ', N'4720-8843           ', N'prov@quesos.com                                   ', N'Lunes a Viernes, 09:00 a 15:00                    ', 1)
INSERT [dbo].[PROVEEDORES] ([Id], [Nombre], [Descripcion], [Direccion], [Telefono], [Mail], [Horario], [Estado]) VALUES (3, N'borrar                                            ', N'                                                                                                    ', N'borrar                                            ', N'sborrar             ', N'borrar                                            ', N'borrar                                            ', 0)
INSERT [dbo].[PROVEEDORES] ([Id], [Nombre], [Descripcion], [Direccion], [Telefono], [Mail], [Horario], [Estado]) VALUES (4, N'Borara                                            ', N'                                                                                                    ', N'                                                  ', N'                    ', N'                                                  ', N'                                                  ', 0)
SET IDENTITY_INSERT [dbo].[PROVEEDORES] OFF
/****** Object:  Table [dbo].[PlatosPedido]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlatosPedido](
	[pedido] [int] NOT NULL,
	[plato] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (3, 3)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (3, 3)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (3, 5)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (3, 5)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (0, 4)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (5, 3)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (0, 7)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (4, 5)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (5, 4)
INSERT [dbo].[PlatosPedido] ([pedido], [plato]) VALUES (5, 1)
/****** Object:  Table [dbo].[PLATOS]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLATOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Precio] [decimal](18, 0) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_PLATOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PLATOS] ON
INSERT [dbo].[PLATOS] ([Id], [Nombre], [Precio], [Estado]) VALUES (1, N'Pizza simple                                      ', CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[PLATOS] ([Id], [Nombre], [Precio], [Estado]) VALUES (2, N'Hamburguesa Simple                                ', CAST(75 AS Decimal(18, 0)), 1)
INSERT [dbo].[PLATOS] ([Id], [Nombre], [Precio], [Estado]) VALUES (3, N'Hamburguesa Completa                              ', CAST(80 AS Decimal(18, 0)), 1)
INSERT [dbo].[PLATOS] ([Id], [Nombre], [Precio], [Estado]) VALUES (4, N'Pizza jamon y morron                              ', CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[PLATOS] ([Id], [Nombre], [Precio], [Estado]) VALUES (5, N'Zorrentinos jamon y queso                         ', CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[PLATOS] ([Id], [Nombre], [Precio], [Estado]) VALUES (6, N'Pizza Fugazzeta                                   ', CAST(200 AS Decimal(18, 0)), 0)
INSERT [dbo].[PLATOS] ([Id], [Nombre], [Precio], [Estado]) VALUES (7, N'hamburguesa con salchichon primavera              ', CAST(275 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[PLATOS] OFF
/****** Object:  Table [dbo].[PEDIDOS]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDOS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mesero] [int] NOT NULL,
	[mesa] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_PEDIDOS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PEDIDOS] ON
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (1, 1, 6, CAST(0x0000A9A1002BF938 AS DateTime), 0)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (3, 5, 6, CAST(0x0000A9A1003775F5 AS DateTime), 1)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (4, 7, 8, CAST(0x0000A9A10048321E AS DateTime), 1)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (5, 1, 6, CAST(0x0000A9A1004903F5 AS DateTime), 0)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (6, 3, 1, CAST(0x0000A9A100DE5754 AS DateTime), 1)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (7, 3, 1, CAST(0x0000A9A100DE7923 AS DateTime), 1)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (8, 3, 1, CAST(0x0000A9A100DE9949 AS DateTime), 1)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (9, 1, 1, CAST(0x0000A9A100ED9088 AS DateTime), 1)
INSERT [dbo].[PEDIDOS] ([id], [mesero], [mesa], [fecha], [activo]) VALUES (10, 3, 1, CAST(0x0000A9A100ED9A75 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[PEDIDOS] OFF
/****** Object:  Table [dbo].[MESEROS]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MESEROS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](24) NULL,
	[Mail] [varchar](50) NULL,
	[Clave] [char](10) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_MESEROS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MESEROS] ON
INSERT [dbo].[MESEROS] ([Id], [Nombre], [Direccion], [Telefono], [Mail], [Clave], [Estado]) VALUES (1, N'Fernando M Suksdorf', N'', N'', N'', N'1111      ', 1)
INSERT [dbo].[MESEROS] ([Id], [Nombre], [Direccion], [Telefono], [Mail], [Clave], [Estado]) VALUES (2, N'Juan Perez', NULL, NULL, NULL, N'2222      ', 0)
INSERT [dbo].[MESEROS] ([Id], [Nombre], [Direccion], [Telefono], [Mail], [Clave], [Estado]) VALUES (3, N'Maximiliano Fernandez', NULL, NULL, NULL, N'3333      ', 1)
INSERT [dbo].[MESEROS] ([Id], [Nombre], [Direccion], [Telefono], [Mail], [Clave], [Estado]) VALUES (4, N'Nicolas Gutierrez', NULL, NULL, NULL, N'4444      ', 1)
INSERT [dbo].[MESEROS] ([Id], [Nombre], [Direccion], [Telefono], [Mail], [Clave], [Estado]) VALUES (5, N'Sabrina Natale', NULL, NULL, NULL, N'5555      ', 1)
INSERT [dbo].[MESEROS] ([Id], [Nombre], [Direccion], [Telefono], [Mail], [Clave], [Estado]) VALUES (6, N'Sebastian Moix', NULL, NULL, NULL, N'6666      ', 1)
INSERT [dbo].[MESEROS] ([Id], [Nombre], [Direccion], [Telefono], [Mail], [Clave], [Estado]) VALUES (7, N'Maria Viera', N'Buen Ayre 5250', N'47208843', N'antoniaviera970@gmail.com', N'1234      ', 1)
SET IDENTITY_INSERT [dbo].[MESEROS] OFF
/****** Object:  Table [dbo].[MESAS]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MESAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Detalles] [varchar](50) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_MESAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MESAS] ON
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (1, N'Mesa 1', N'La más cercana a la entrada', 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (2, N'Mesa 2', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (3, N'Mesa 3', N'cerca del baño, mal olor', 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (4, N'Mesa 4', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (5, N'Mesa 5', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (6, N'Mesa 6', N'', 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (7, N'Mesa 7', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (8, N'Mesa 8', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (9, N'Mesa 9', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (10, N'Mesa 10', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (11, N'Mesa 11', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (12, N'Mesa 12', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (13, N'Mesa 13', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (14, N'Mesa 14', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (15, N'Mesa 15', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (16, N'Mesa 16', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (17, N'Mesa 17', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (18, N'Mesa 18', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (19, N'Mesa 19', NULL, 1)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (20, N'Mesa 20', NULL, 0)
INSERT [dbo].[MESAS] ([Id], [Nombre], [Detalles], [Estado]) VALUES (21, N'Mesa 20', N'La más alejada a la salida', 1)
SET IDENTITY_INSERT [dbo].[MESAS] OFF
/****** Object:  Table [dbo].[MesaMesero]    Script Date: 11/25/2018 20:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MesaMesero](
	[Mesa] [int] NOT NULL,
	[Mesero] [int] NOT NULL,
	[Jornada] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_MesaMesero] ON [dbo].[MesaMesero] 
(
	[Mesa] ASC,
	[Jornada] ASC,
	[Mesero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 1, 1)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 1, 2)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 1, 13)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 3, 15)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 4, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 1, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 3, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (1, 6, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (2, 1, 1)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (2, 7, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (3, 2, 1)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (4, 1, 15)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (4, 4, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (4, 1, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (4, 5, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (5, 1, 14)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (5, 1, 15)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (5, 3, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (6, 1, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (6, 5, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (6, 1, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (6, 3, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (6, 5, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (8, 7, 15)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (8, 7, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (8, 5, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (9, 7, 15)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (9, 1, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (9, 3, 17)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (10, 5, 1)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (15, 6, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (18, 6, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (19, 6, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (21, 6, 16)
INSERT [dbo].[MesaMesero] ([Mesa], [Mesero], [Jornada]) VALUES (21, 7, 17)
/****** Object:  Default [DF_Jornada_fecha]    Script Date: 11/25/2018 20:04:12 ******/
ALTER TABLE [dbo].[Jornada] ADD  CONSTRAINT [DF_Jornada_fecha]  DEFAULT (getdate()) FOR [fecha]
GO
/****** Object:  Default [DF_PLATOS_Precio]    Script Date: 11/25/2018 20:04:12 ******/
ALTER TABLE [dbo].[PLATOS] ADD  CONSTRAINT [DF_PLATOS_Precio]  DEFAULT ((0)) FOR [Precio]
GO
/****** Object:  Default [DF_PLATOS_Estado]    Script Date: 11/25/2018 20:04:12 ******/
ALTER TABLE [dbo].[PLATOS] ADD  CONSTRAINT [DF_PLATOS_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_MESEROS_Esatdo]    Script Date: 11/25/2018 20:04:12 ******/
ALTER TABLE [dbo].[MESEROS] ADD  CONSTRAINT [DF_MESEROS_Esatdo]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_MESAS_Estado]    Script Date: 11/25/2018 20:04:12 ******/
ALTER TABLE [dbo].[MESAS] ADD  CONSTRAINT [DF_MESAS_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  ForeignKey [FK_MesaMesero_MESAS]    Script Date: 11/25/2018 20:04:12 ******/
ALTER TABLE [dbo].[MesaMesero]  WITH CHECK ADD  CONSTRAINT [FK_MesaMesero_MESAS] FOREIGN KEY([Mesa])
REFERENCES [dbo].[MESAS] ([Id])
GO
ALTER TABLE [dbo].[MesaMesero] CHECK CONSTRAINT [FK_MesaMesero_MESAS]
GO
/****** Object:  ForeignKey [FK_MesaMesero_MESEROS]    Script Date: 11/25/2018 20:04:12 ******/
ALTER TABLE [dbo].[MesaMesero]  WITH CHECK ADD  CONSTRAINT [FK_MesaMesero_MESEROS] FOREIGN KEY([Mesero])
REFERENCES [dbo].[MESEROS] ([Id])
GO
ALTER TABLE [dbo].[MesaMesero] CHECK CONSTRAINT [FK_MesaMesero_MESEROS]
GO
