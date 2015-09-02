USE [master]
GO
/****** Object:  Database [ElasticDB]    Script Date: 9/1/2015 3:45:19 AM ******/
CREATE DATABASE [ElasticDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ElasticDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ElasticDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ElasticDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ElasticDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ElasticDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ElasticDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ElasticDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ElasticDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ElasticDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ElasticDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ElasticDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ElasticDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ElasticDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ElasticDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ElasticDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ElasticDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ElasticDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ElasticDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ElasticDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ElasticDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ElasticDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ElasticDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ElasticDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ElasticDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ElasticDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ElasticDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ElasticDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ElasticDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ElasticDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ElasticDB] SET  MULTI_USER 
GO
ALTER DATABASE [ElasticDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ElasticDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ElasticDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ElasticDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ElasticDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ElasticDB]
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 9/1/2015 3:45:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[ArtistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK__Artists__25706B50245D67DE] PRIMARY KEY CLUSTERED 
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Artists] ON 

GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (1, N'AC/DC', N'USA')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (2, N'Accept', N'UK')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (3, N'Aerosmith', N'India')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (4, N'Alanis Morissette', N'BD')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (5, N'Alice In Chains', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (6, N'Antônio Carlos Jobim', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (7, N'Apocalyptica', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (8, N'Audioslave', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (10, N'Billy Cobham', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (11, N'Black Label Society', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (12, N'Black Sabbath', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (14, N'Bruce Dickinson', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (15, N'Buddy Guy', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (16, N'Caetano Veloso', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (17, N'Chico Buarque', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (18, N'Chico Science & Nação Zumbi', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (19, N'Cidade Negra', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (20, N'Cláudio Zoli', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (21, N'Various Artists', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (22, N'Led Zeppelin', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (23, N'Frank Zappa & Captain Beefheart', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (24, N'Marcos Valle', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (27, N'Gilberto Gil', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (37, N'Ed Motta', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (41, N'Elis Regina', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (42, N'Milton Nascimento', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (46, N'Jorge Ben', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (50, N'Metallica', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (51, N'Queen', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (52, N'Kiss', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (53, N'Spyro Gyra', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (55, N'David Coverdale', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (56, N'Gonzaguinha', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (58, N'Deep Purple', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (59, N'Santana', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (68, N'Miles Davis', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (72, N'Vinícius De Moraes', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (76, N'Creedence Clearwater Revival', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (77, N'Cássia Eller', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (79, N'Dennis Chambers', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (80, N'Djavan', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (81, N'Eric Clapton', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (82, N'Faith No More', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (83, N'Falamansa', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (84, N'Foo Fighters', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (86, N'Funk Como Le Gusta', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (87, N'Godsmack', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (88, N'Guns N'' Roses', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (89, N'Incognito', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (90, N'Iron Maiden', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (92, N'Jamiroquai', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (94, N'Jimi Hendrix', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (95, N'Joe Satriani', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (96, N'Jota Quest', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (98, N'Judas Priest', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (99, N'Legião Urbana', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (100, N'Lenny Kravitz', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (101, N'Lulu Santos', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (102, N'Marillion', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (103, N'Marisa Monte', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (105, N'Men At Work', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (106, N'Motörhead', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (109, N'Mötley Crüe', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (110, N'Nirvana', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (111, N'O Terço', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (112, N'Olodum', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (113, N'Os Paralamas Do Sucesso', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (114, N'Ozzy Osbourne', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (115, N'Page & Plant', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (117, N'Paul D''Ianno', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (118, N'Pearl Jam', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (120, N'Pink Floyd', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (124, N'R.E.M.', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (126, N'Raul Seixas', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (127, N'Red Hot Chili Peppers', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (128, N'Rush', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (130, N'Skank', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (132, N'Soundgarden', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (133, N'Stevie Ray Vaughan & Double Trouble', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (134, N'Stone Temple Pilots', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (135, N'System Of A Down', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (136, N'Terry Bozzio, Tony Levin & Steve Stevens', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (137, N'The Black Crowes', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (139, N'The Cult', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (140, N'The Doors', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (141, N'The Police', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (142, N'The Rolling Stones', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (144, N'The Who', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (145, N'Tim Maia', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (150, N'U2', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (151, N'UB40', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (152, N'Van Halen', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (153, N'Velvet Revolver', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (155, N'Zeca Pagodinho', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (157, N'Dread Zeppelin', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (179, N'Scorpions', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (196, N'Cake', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (197, N'Aisha Duo', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (200, N'The Posies', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (201, N'Luciana Souza/Romero Lubambo', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (202, N'Aaron Goldberg', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (203, N'Nicolaus Esterhazy Sinfonia', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (204, N'Temple of the Dog', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (205, N'Chris Cornell', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (206, N'Alberto Turco & Nova Schola Gregoriana', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (208, N'English Concert & Trevor Pinnock', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (211, N'Wilhelm Kempff', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (212, N'Yo-Yo Ma', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (213, N'Scholars Baroque Ensemble', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (217, N'Royal Philharmonic Orchestra & Sir Thomas Beecham', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (219, N'Britten Sinfonia, Ivor Bolton & Lesley Garrett', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (221, N'Sir Georg Solti & Wiener Philharmoniker', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (223, N'London Symphony Orchestra & Sir Charles Mackerras', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (224, N'Barry Wordsworth & BBC Concert Orchestra', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (226, N'Eugene Ormandy', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (229, N'Boston Symphony Orchestra & Seiji Ozawa', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (230, N'Aaron Copland & London Symphony Orchestra', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (231, N'Ton Koopman', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (232, N'Sergei Prokofiev & Yuri Temirkanov', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (233, N'Chicago Symphony Orchestra & Fritz Reiner', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (234, N'Orchestra of The Age of Enlightenment', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (236, N'James Levine', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (237, N'Berliner Philharmoniker & Hans Rosbaud', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (238, N'Maurizio Pollini', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (240, N'Gustav Mahler', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (242, N'Edo de Waart & San Francisco Symphony', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (244, N'Choir Of Westminster Abbey & Simon Preston', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (245, N'Michael Tilson Thomas & San Francisco Symphony', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (247, N'The King''s Singers', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (248, N'Berliner Philharmoniker & Herbert Von Karajan', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (250, N'Christopher O''Riley', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (251, N'Fretwork', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (252, N'Amy Winehouse', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (253, N'Calexico', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (255, N'Yehudi Menuhin', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (258, N'Les Arts Florissants & William Christie', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (259, N'The 12 Cellists of The Berlin Philharmonic', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (260, N'Adrian Leaper & Doreen de Feis', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (261, N'Roger Norrington, London Classical Players', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (264, N'Kent Nagano and Orchestre de l''Opéra de Lyon', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (265, N'Julian Bream', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (266, N'Martin Roscoe', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (267, N'Göteborgs Symfoniker & Neeme Järvi', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (270, N'Gerald Moore', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (271, N'Mela Tenenbaum, Pro Musica Prague & Richard Kapp', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (274, N'Nash Ensemble', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (276, N'Chic', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (277, N'Anita Ward', NULL)
GO
INSERT [dbo].[Artists] ([ArtistId], [Name], [Address]) VALUES (278, N'Donna Summer', NULL)
GO
SET IDENTITY_INSERT [dbo].[Artists] OFF
GO
USE [master]
GO
ALTER DATABASE [ElasticDB] SET  READ_WRITE 
GO
