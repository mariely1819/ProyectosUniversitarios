
/****** Mariely Encarnación Encarnación  Matricula: 16-SIIN-1-136 ******/


CREATE DATABASE [PFBD 2]
GO
USE [PFBD 2]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 01/08/2018 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulo](
	[CodArticulo] [int] NOT NULL,
	[Articulo] [varchar](50) NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[CodArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cantidad]    Script Date: 01/08/2018 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantidad](
	[Cantidad_Solicitada] [int] NULL,
	[CodArticulo] [int] NULL,
	[CodCliente] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 01/08/2018 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[CodCliente] [int] NOT NULL,
	[Nombre_Cliente] [varchar](50) NULL,
	[Apellido_Cliente] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[CodCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (121, N'Zapatos Marrones')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (122, N'Blusa Azul')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (123, N'Gorra Negra')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (124, N'Tenis Rojos')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (125, N'Reloj Dorado')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (126, N'Correa de cuero')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (127, N'Lentes negros')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (128, N'Pulseras Verdes')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (129, N'Pantalones Jeans')
INSERT [dbo].[Articulo] ([CodArticulo], [Articulo]) VALUES (130, N'Camisas Blancas')
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (1, 121, 1201)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (2, 122, 1204)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (3, 123, 1203)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (4, 124, 1202)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (5, 125, 1209)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (6, 126, 1207)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (7, 127, 1205)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (8, 128, 1208)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (9, 129, 1210)
INSERT [dbo].[Cantidad] ([Cantidad_Solicitada], [CodArticulo], [CodCliente]) VALUES (10, 130, 1206)
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1201, N'Juan', N'Perez')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1202, N'Michael', N'Campusano')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1203, N'Modesto', N'Reyes')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1204, N'María', N'Germán')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1205, N'Mariely', N'Encarnación')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1206, N'Noriely', N'Rodriguez')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1207, N'Yan', N'Hernandez')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1208, N'Pablo', N'Fernandez')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1209, N'Masiel', N'Contreras')
INSERT [dbo].[Cliente] ([CodCliente], [Nombre_Cliente], [Apellido_Cliente]) VALUES (1210, N'Daniel', N'Diaz')
ALTER TABLE [dbo].[Cantidad]  WITH CHECK ADD  CONSTRAINT [FK_Cantidad_Articulo] FOREIGN KEY([CodArticulo])
REFERENCES [dbo].[Articulo] ([CodArticulo])
GO
ALTER TABLE [dbo].[Cantidad] CHECK CONSTRAINT [FK_Cantidad_Articulo]
GO
ALTER TABLE [dbo].[Cantidad]  WITH CHECK ADD  CONSTRAINT [FK_Cantidad_Cliente] FOREIGN KEY([CodCliente])
REFERENCES [dbo].[Cliente] ([CodCliente])
GO
ALTER TABLE [dbo].[Cantidad] CHECK CONSTRAINT [FK_Cantidad_Cliente]
GO
USE [master]
GO
ALTER DATABASE [PFBD 2] SET  READ_WRITE 
GO
