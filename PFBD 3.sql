
/****** Mariely Encarnación Encarnación  Matricula: 16-SIIN-1-136 ******/


CREATE DATABASE [PFBD 3]
GO
USE [PFBD 3]
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 01/08/2018 14:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamento](
	[CodMedicamento] [int] NOT NULL,
	[Nombre_Medicamento] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Utilidad] [varchar](50) NULL,
 CONSTRAINT [PK_Medicamento] PRIMARY KEY CLUSTERED 
(
	[CodMedicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 01/08/2018 14:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medico](
	[CodMedico] [int] NOT NULL,
	[Nombre_Medico] [varchar](50) NULL,
	[Apellido_Medico] [varchar](50) NULL,
	[Especialidad] [varchar](50) NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[CodMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 01/08/2018 14:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente](
	[Nombre_Paciente] [varchar](50) NULL,
	[Apellido_Paciente] [varchar](50) NULL,
	[CodMedico] [int] NULL,
	[CodMedicamento] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (141, N'Winasor', 1, N'Antigripal')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (142, N'Acetaminofen', 2, N'Calmante')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (143, N'Paracetamol', 3, N'Fiebre')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (144, N'Insulina', 4, N'Diabetes')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (145, N'Vasotec', 5, N'Presion Alta')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (146, N'Loperamida', 6, N'Diarreico')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (147, N'Trinidazol', 7, N'Ameba')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (148, N'Beducen', 8, N'Quemaduras')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (149, N'Furacin', 9, N'Antibacterial')
INSERT [dbo].[Medicamento] ([CodMedicamento], [Nombre_Medicamento], [Cantidad], [Utilidad]) VALUES (150, N'Recoveron NC', 10, N'Cicatrizante')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1401, N'Veronica', N'Rodriguez', N'Nutricionista')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1402, N'Leonardo', N'Cervantes', N'Cardiologo')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1403, N'Natalia', N'Perez', N'Urologa')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1404, N'Julia', N'Salazar', N'Ginecologa')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1405, N'Margarita', N'Florez', N'Anestesiologa')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1406, N'Elizabeth', N'Gonzales', N'Ortopeda')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1407, N'Ricardo', N'Mateo', N'Medico General')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1408, N'Melissa', N'D´leon', N'Pediatra')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1409, N'Jose', N'Martinez', N'Odontologo')
INSERT [dbo].[Medico] ([CodMedico], [Nombre_Medico], [Apellido_Medico], [Especialidad]) VALUES (1410, N'Osvaldo', N'Dominguez', N'Otorrinologo')
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Leila', N'Alabi', 1404, 142)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Zara', N'Dominguez', 1405, 150)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Fatima', N'Perez', 1402, 145)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Sophia', N'Carvajal', 1407, 143)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Marianny', N'Cadena', 1406, 147)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Ádam', N'Tibor', 1410, 146)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Jakob', N'Gomez', 1403, 148)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Péter', N'Medina', 1401, 144)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Eduárd', N'Fernandez', 1408, 149)
INSERT [dbo].[Paciente] ([Nombre_Paciente], [Apellido_Paciente], [CodMedico], [CodMedicamento]) VALUES (N'Patrik', N'Arno', 1409, 141)
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Medicamento] FOREIGN KEY([CodMedicamento])
REFERENCES [dbo].[Medicamento] ([CodMedicamento])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Medicamento]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Medico] FOREIGN KEY([CodMedico])
REFERENCES [dbo].[Medico] ([CodMedico])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Medico]
GO
USE [master]
GO
ALTER DATABASE [PFBD 3] SET  READ_WRITE 
GO
