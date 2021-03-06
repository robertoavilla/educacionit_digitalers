USE [EstacionamientoIT]
GO
/****** Object:  Table [dbo].[PlayasEstacionamiento]    Script Date: 30/12/2020 22:03:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayasEstacionamiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
 CONSTRAINT [PK_PlayasEstacionamiento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PlayasEstacionamiento] ON USE [EstacionamientoIT]
GO
/****** Object:  Table [dbo].[Cocheras]    Script Date: 11/1/2021 18:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cocheras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NroCochera] [int] NOT NULL,
	[Patente] [varchar](10) NULL,
	[TipoDeVehiculo] [tinyint] NULL,
	[IdEstacionamiento] [int] NOT NULL,
 CONSTRAINT [PK_Cocheras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayasEstacionamiento]    Script Date: 11/1/2021 18:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayasEstacionamiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
 CONSTRAINT [PK_PlayasEstacionamiento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cocheras] ON 
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (2, 2, NULL, NULL, 1)
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (4, 3, NULL, NULL, 1)
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (10, 4, NULL, NULL, 1)
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (11, 5, NULL, NULL, 1)
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (12, 6, NULL, NULL, 1)
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (13, 7, NULL, NULL, 1)
GO
INSERT [dbo].[Cocheras] ([Id], [NroCochera], [Patente], [TipoDeVehiculo], [IdEstacionamiento]) VALUES (15, 8, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Cocheras] OFF
GO
SET IDENTITY_INSERT [dbo].[PlayasEstacionamiento] ON 
GO
INSERT [dbo].[PlayasEstacionamiento] ([Id], [Nombre]) VALUES (1, N'Gorriti 300')
GO
INSERT [dbo].[PlayasEstacionamiento] ([Id], [Nombre]) VALUES (2, N'Yapeyú 220')
GO
INSERT [dbo].[PlayasEstacionamiento] ([Id], [Nombre]) VALUES (4, N'Ponce 10')
GO
SET IDENTITY_INSERT [dbo].[PlayasEstacionamiento] OFF
GO
ALTER TABLE [dbo].[Cocheras]  WITH CHECK ADD  CONSTRAINT [FK_Cocheras_PlayasEstacionamiento] FOREIGN KEY([IdEstacionamiento])
REFERENCES [dbo].[PlayasEstacionamiento] ([Id])
GO
ALTER TABLE [dbo].[Cocheras] CHECK CONSTRAINT [FK_Cocheras_PlayasEstacionamiento]
GO

GO
INSERT [dbo].[PlayasEstacionamiento] ([Id], [Nombre]) VALUES (1, N'Gorriti 300')
GO
INSERT [dbo].[PlayasEstacionamiento] ([Id], [Nombre]) VALUES (2, N'Yapeyú 220')
GO
INSERT [dbo].[PlayasEstacionamiento] ([Id], [Nombre]) VALUES (4, N'Ponce 10')
GO
SET IDENTITY_INSERT [dbo].[PlayasEstacionamiento] OFF
GO
USE [master]
GO
ALTER DATABASE [EstacionamientoIT] SET  READ_WRITE 
GO
