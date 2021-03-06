
/****** Mariely Encarnación Encarnación  Matricula: 16-SIIN-1-136 ******/


CREATE DATABASE [PFBD 1] 
GO
USE [PFBD 1]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 01/08/2018 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[CodDepartamento] [int] NOT NULL,
	[Departamento] [varchar](50) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[CodDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 01/08/2018 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[CodEmpleado] [int] NOT NULL,
	[Nombre_Empleado] [varchar](50) NULL,
	[Apellido_Empleado] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[CodEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sueldo]    Script Date: 01/08/2018 14:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sueldo](
	[Sueldo] [int] NULL,
	[CodDepartamento] [int] NULL,
	[CodEmpleado] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1001, N'Administración')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1002, N'Tesoreria')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1003, N'Contabilidad')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1004, N'Tecnologia')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1005, N'Mantenimiento')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1006, N'Seguridad')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1007, N'Transporte')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1008, N'Recursos Humanos')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1009, N'Planificación')
INSERT [dbo].[Departamento] ([CodDepartamento], [Departamento]) VALUES (1010, N'Operaciones')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (101, N'Adriana', N'Martinez')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (102, N'Gabriela', N'Florez')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (103, N'Mariana', N'Ramirez')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (104, N'Alejandro', N'Sanchez')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (105, N'Veronica', N'Rodriguez')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (106, N'Robinson', N'Garcia')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (107, N'Eduardo', N'Jimenéz')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (108, N'Rafael', N'Santana')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (109, N'Sebastian', N'Goméz')
INSERT [dbo].[Empleado] ([CodEmpleado], [Nombre_Empleado], [Apellido_Empleado]) VALUES (110, N'Rodrigo', N'Contreras')
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (9000, 1001, 101)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (10000, 1004, 102)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (10500, 1003, 105)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (12000, 1007, 103)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (12800, 1002, 109)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (13200, 1005, 110)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (14100, 1009, 104)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (15000, 1010, 106)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (15800, 1008, 108)
INSERT [dbo].[Sueldo] ([Sueldo], [CodDepartamento], [CodEmpleado]) VALUES (16000, 1006, 107)
ALTER TABLE [dbo].[Sueldo]  WITH CHECK ADD  CONSTRAINT [FK_Sueldo_Departamento1] FOREIGN KEY([CodDepartamento])
REFERENCES [dbo].[Departamento] ([CodDepartamento])
GO
ALTER TABLE [dbo].[Sueldo] CHECK CONSTRAINT [FK_Sueldo_Departamento1]
GO
ALTER TABLE [dbo].[Sueldo]  WITH CHECK ADD  CONSTRAINT [FK_Sueldo_Empleado1] FOREIGN KEY([CodEmpleado])
REFERENCES [dbo].[Empleado] ([CodEmpleado])
GO
ALTER TABLE [dbo].[Sueldo] CHECK CONSTRAINT [FK_Sueldo_Empleado1]
GO
USE [master]
GO
ALTER DATABASE [PFBD 1] SET  READ_WRITE 
GO
