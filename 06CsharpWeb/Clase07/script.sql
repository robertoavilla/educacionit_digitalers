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
USE [master]
GO
ALTER DATABASE [EstacionamientoIT] SET  READ_WRITE 
GO
