USE [Cidades]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[DataNascimento] [datetime2](7) NOT NULL,
	[CidadeId] [uniqueidentifier] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_ALL_FUNCIONARIOS]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ALL_FUNCIONARIOS] AS
SELECT * FROM Funcionarios;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidades]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidades](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Populacao] [int] NOT NULL,
	[TaxaCriminalidade] [float] NOT NULL,
	[ImpostoSobreProduto] [float] NOT NULL,
	[EstadoCalamidade] [bit] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_Cidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcoes]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcoes](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](max) NULL,
	[NivelAcesso] [int] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_Funcoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuncoesFuncionarios]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuncoesFuncionarios](
	[FuncionarioId] [uniqueidentifier] NOT NULL,
	[FuncaoId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FuncoesFuncionarios] PRIMARY KEY CLUSTERED 
(
	[FuncaoId] ASC,
	[FuncionarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrefeitosAtuais]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrefeitosAtuais](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[InicioMandato] [datetime2](7) NOT NULL,
	[FimMandato] [datetime2](7) NOT NULL,
	[CidadeId] [uniqueidentifier] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_PrefeitosAtuais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD  CONSTRAINT [FK_Funcionarios_Cidades_CidadeId] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Funcionarios] CHECK CONSTRAINT [FK_Funcionarios_Cidades_CidadeId]
GO
ALTER TABLE [dbo].[FuncoesFuncionarios]  WITH CHECK ADD  CONSTRAINT [FK_FuncoesFuncionarios_Funcionarios_FuncionarioId] FOREIGN KEY([FuncionarioId])
REFERENCES [dbo].[Funcionarios] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FuncoesFuncionarios] CHECK CONSTRAINT [FK_FuncoesFuncionarios_Funcionarios_FuncionarioId]
GO
ALTER TABLE [dbo].[FuncoesFuncionarios]  WITH CHECK ADD  CONSTRAINT [FK_FuncoesFuncionarios_Funcoes_FuncaoId] FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcoes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FuncoesFuncionarios] CHECK CONSTRAINT [FK_FuncoesFuncionarios_Funcoes_FuncaoId]
GO
ALTER TABLE [dbo].[PrefeitosAtuais]  WITH CHECK ADD  CONSTRAINT [FK_PrefeitosAtuais_Cidades_CidadeId] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrefeitosAtuais] CHECK CONSTRAINT [FK_PrefeitosAtuais_Cidades_CidadeId]
GO
/****** Object:  StoredProcedure [dbo].[SP_ADD_CIDADE]    Script Date: 28/09/2021 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ADD_CIDADE]

@P_Id uniqueidentifier,
@P_Nome varchar(max),
@P_Populacao INTEGER,
@P_TaxaCriminalidade DECIMAL(4,2),
@P_ImpostoSobreProduto DECIMAL(4,2),
@P_EstadoCalamidade BIT

AS
	BEGIN
		INSERT INTO Cidades (
			Id
			, Nome
			, Populacao
			, TaxaCriminalidade
			, ImpostoSobreProduto
			, EstadoCalamidade
			, UltimaAtualizacao)

		VALUES (
			@P_Id
			, @P_Nome
			, @P_Populacao
			, @P_TaxaCriminalidade
			, @P_ImpostoSobreProduto
			, @P_EstadoCalamidade
			, CURRENT_TIMESTAMP
		)
	END


GO
