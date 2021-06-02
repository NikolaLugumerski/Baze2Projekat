
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/02/2021 16:27:11
-- Generated from EDMX file: C:\Users\Korisnik\source\repos\Baze2Projekat\ProjekatBaze2\ModelDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ProgettiDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DirektorSef]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_Sef] DROP CONSTRAINT [FK_DirektorSef];
GO
IF OBJECT_ID(N'[dbo].[FK_MagacionerOdnosi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OdnosiSet] DROP CONSTRAINT [FK_MagacionerOdnosi];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterijalOdnosi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OdnosiSet] DROP CONSTRAINT [FK_MaterijalOdnosi];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterijalPriprema]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MaterijalSet] DROP CONSTRAINT [FK_MaterijalPriprema];
GO
IF OBJECT_ID(N'[dbo].[FK_NadgledaPripremu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_SefPripreme] DROP CONSTRAINT [FK_NadgledaPripremu];
GO
IF OBJECT_ID(N'[dbo].[FK_NadgledaProizvodnju]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_SefProizvodnje] DROP CONSTRAINT [FK_NadgledaProizvodnju];
GO
IF OBJECT_ID(N'[dbo].[FK_ObucavaMajstorica]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ObucavaSet] DROP CONSTRAINT [FK_ObucavaMajstorica];
GO
IF OBJECT_ID(N'[dbo].[FK_ObucavaRadnikNaTraci]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ObucavaSet] DROP CONSTRAINT [FK_ObucavaRadnikNaTraci];
GO
IF OBJECT_ID(N'[dbo].[FK_KontroliseMajstorica]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KontroliseSet] DROP CONSTRAINT [FK_KontroliseMajstorica];
GO
IF OBJECT_ID(N'[dbo].[FK_KontroliseRadnikNaTraci]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KontroliseSet] DROP CONSTRAINT [FK_KontroliseRadnikNaTraci];
GO
IF OBJECT_ID(N'[dbo].[FK_KoristiRadnikSaAlatom]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KoristiSet] DROP CONSTRAINT [FK_KoristiRadnikSaAlatom];
GO
IF OBJECT_ID(N'[dbo].[FK_KoristiAlat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KoristiSet] DROP CONSTRAINT [FK_KoristiAlat];
GO
IF OBJECT_ID(N'[dbo].[FK_RadnikZaMasinomUpotrebljava]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UpotrebljavaSet] DROP CONSTRAINT [FK_RadnikZaMasinomUpotrebljava];
GO
IF OBJECT_ID(N'[dbo].[FK_MasinaUpotrebljava]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UpotrebljavaSet] DROP CONSTRAINT [FK_MasinaUpotrebljava];
GO
IF OBJECT_ID(N'[dbo].[FK_TrakaRadnikNaTraci]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_RadnikNaTraci] DROP CONSTRAINT [FK_TrakaRadnikNaTraci];
GO
IF OBJECT_ID(N'[dbo].[FK_NormerPodesava]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PodesavaSet] DROP CONSTRAINT [FK_NormerPodesava];
GO
IF OBJECT_ID(N'[dbo].[FK_TrakaPodesava]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PodesavaSet] DROP CONSTRAINT [FK_TrakaPodesava];
GO
IF OBJECT_ID(N'[dbo].[FK_Proizvodi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GotovProizvodSet] DROP CONSTRAINT [FK_Proizvodi];
GO
IF OBJECT_ID(N'[dbo].[FK_NalaziSe]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrakaSet_TrakaUPripremi] DROP CONSTRAINT [FK_NalaziSe];
GO
IF OBJECT_ID(N'[dbo].[FK_ProizvodnjaTrakaUProizvodnji]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrakaSet_TrakaUProizvodnji] DROP CONSTRAINT [FK_ProizvodnjaTrakaUProizvodnji];
GO
IF OBJECT_ID(N'[dbo].[FK_Direktor_inherits_Radnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_Direktor] DROP CONSTRAINT [FK_Direktor_inherits_Radnik];
GO
IF OBJECT_ID(N'[dbo].[FK_Sef_inherits_Radnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_Sef] DROP CONSTRAINT [FK_Sef_inherits_Radnik];
GO
IF OBJECT_ID(N'[dbo].[FK_Magacioner_inherits_Radnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_Magacioner] DROP CONSTRAINT [FK_Magacioner_inherits_Radnik];
GO
IF OBJECT_ID(N'[dbo].[FK_SefPripreme_inherits_Sef]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_SefPripreme] DROP CONSTRAINT [FK_SefPripreme_inherits_Sef];
GO
IF OBJECT_ID(N'[dbo].[FK_SefProizvodnje_inherits_Sef]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_SefProizvodnje] DROP CONSTRAINT [FK_SefProizvodnje_inherits_Sef];
GO
IF OBJECT_ID(N'[dbo].[FK_Majstorica_inherits_Radnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_Majstorica] DROP CONSTRAINT [FK_Majstorica_inherits_Radnik];
GO
IF OBJECT_ID(N'[dbo].[FK_RadnikNaTraci_inherits_Radnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_RadnikNaTraci] DROP CONSTRAINT [FK_RadnikNaTraci_inherits_Radnik];
GO
IF OBJECT_ID(N'[dbo].[FK_RadnikSaAlatom_inherits_RadnikNaTraci]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_RadnikSaAlatom] DROP CONSTRAINT [FK_RadnikSaAlatom_inherits_RadnikNaTraci];
GO
IF OBJECT_ID(N'[dbo].[FK_RadnikZaMasinom_inherits_RadnikNaTraci]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_RadnikZaMasinom] DROP CONSTRAINT [FK_RadnikZaMasinom_inherits_RadnikNaTraci];
GO
IF OBJECT_ID(N'[dbo].[FK_Normer_inherits_Radnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RadnikSet_Normer] DROP CONSTRAINT [FK_Normer_inherits_Radnik];
GO
IF OBJECT_ID(N'[dbo].[FK_TrakaUPripremi_inherits_Traka]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrakaSet_TrakaUPripremi] DROP CONSTRAINT [FK_TrakaUPripremi_inherits_Traka];
GO
IF OBJECT_ID(N'[dbo].[FK_TrakaUProizvodnji_inherits_Traka]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrakaSet_TrakaUProizvodnji] DROP CONSTRAINT [FK_TrakaUProizvodnji_inherits_Traka];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[RadnikSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet];
GO
IF OBJECT_ID(N'[dbo].[PripremaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PripremaSet];
GO
IF OBJECT_ID(N'[dbo].[ProizvodnjaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProizvodnjaSet];
GO
IF OBJECT_ID(N'[dbo].[MaterijalSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MaterijalSet];
GO
IF OBJECT_ID(N'[dbo].[TrakaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrakaSet];
GO
IF OBJECT_ID(N'[dbo].[MasinaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MasinaSet];
GO
IF OBJECT_ID(N'[dbo].[AlatSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AlatSet];
GO
IF OBJECT_ID(N'[dbo].[OdnosiSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OdnosiSet];
GO
IF OBJECT_ID(N'[dbo].[ObucavaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ObucavaSet];
GO
IF OBJECT_ID(N'[dbo].[KontroliseSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KontroliseSet];
GO
IF OBJECT_ID(N'[dbo].[KoristiSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KoristiSet];
GO
IF OBJECT_ID(N'[dbo].[UpotrebljavaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UpotrebljavaSet];
GO
IF OBJECT_ID(N'[dbo].[PodesavaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PodesavaSet];
GO
IF OBJECT_ID(N'[dbo].[GotovProizvodSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GotovProizvodSet];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_Direktor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_Direktor];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_Sef]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_Sef];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_Magacioner]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_Magacioner];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_SefPripreme]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_SefPripreme];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_SefProizvodnje]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_SefProizvodnje];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_Majstorica]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_Majstorica];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_RadnikNaTraci]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_RadnikNaTraci];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_RadnikSaAlatom]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_RadnikSaAlatom];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_RadnikZaMasinom]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_RadnikZaMasinom];
GO
IF OBJECT_ID(N'[dbo].[RadnikSet_Normer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RadnikSet_Normer];
GO
IF OBJECT_ID(N'[dbo].[TrakaSet_TrakaUPripremi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrakaSet_TrakaUPripremi];
GO
IF OBJECT_ID(N'[dbo].[TrakaSet_TrakaUProizvodnji]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrakaSet_TrakaUProizvodnji];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'RadnikSet'
CREATE TABLE [dbo].[RadnikSet] (
    [IdRad] int IDENTITY(1,1) NOT NULL,
    [Ime] nvarchar(max)  NOT NULL,
    [Prz] nvarchar(max)  NOT NULL,
    [Plt] int  NOT NULL,
    [Tip] int  NOT NULL
);
GO

-- Creating table 'PripremaSet'
CREATE TABLE [dbo].[PripremaSet] (
    [OznPrip] int IDENTITY(1,1) NOT NULL,
    [KolPrpMat] int  NOT NULL,
    [BrRadPrip] int  NOT NULL
);
GO

-- Creating table 'ProizvodnjaSet'
CREATE TABLE [dbo].[ProizvodnjaSet] (
    [OznProiz] int IDENTITY(1,1) NOT NULL,
    [KolNapPr] int  NOT NULL,
    [BrRadProiz] int  NOT NULL
);
GO

-- Creating table 'MaterijalSet'
CREATE TABLE [dbo].[MaterijalSet] (
    [OznMat] int IDENTITY(1,1) NOT NULL,
    [KvalMat] nvarchar(max)  NOT NULL,
    [BojaMat] nvarchar(max)  NOT NULL,
    [SasMat] nvarchar(max)  NOT NULL,
    [PripremaOznPrip] int  NOT NULL,
    [Priprema_OznPrip] int  NOT NULL
);
GO

-- Creating table 'TrakaSet'
CREATE TABLE [dbo].[TrakaSet] (
    [OznTr] int IDENTITY(1,1) NOT NULL,
    [TipTr] int  NOT NULL,
    [BrRadTr] int  NOT NULL
);
GO

-- Creating table 'MasinaSet'
CREATE TABLE [dbo].[MasinaSet] (
    [SrBrMsn] int IDENTITY(1,1) NOT NULL,
    [TrEn] int  NOT NULL,
    [BrRdSati] int  NOT NULL
);
GO

-- Creating table 'AlatSet'
CREATE TABLE [dbo].[AlatSet] (
    [SrBrAl] int IDENTITY(1,1) NOT NULL,
    [TipAl] nvarchar(max)  NOT NULL,
    [KolAl] int  NOT NULL
);
GO

-- Creating table 'OdnosiSet'
CREATE TABLE [dbo].[OdnosiSet] (
    [KolMat] int  NOT NULL,
    [MagacionerIdRad] int  NOT NULL,
    [MaterijalOznMat] int  NOT NULL
);
GO

-- Creating table 'ObucavaSet'
CREATE TABLE [dbo].[ObucavaSet] (
    [MajstoricaIdRad] int  NOT NULL,
    [RadnikNaTraciIdRad] int  NOT NULL
);
GO

-- Creating table 'KontroliseSet'
CREATE TABLE [dbo].[KontroliseSet] (
    [MajstoricaIdRad] int  NOT NULL,
    [RadnikNaTraciIdRad2] int  NOT NULL
);
GO

-- Creating table 'KoristiSet'
CREATE TABLE [dbo].[KoristiSet] (
    [RadnikSaAlatomIdRad] int  NOT NULL,
    [AlatSrBrAl] int  NOT NULL
);
GO

-- Creating table 'UpotrebljavaSet'
CREATE TABLE [dbo].[UpotrebljavaSet] (
    [RadnikZaMasinomIdRad] int  NOT NULL,
    [MasinaSrBrMsn] int  NOT NULL
);
GO

-- Creating table 'PodesavaSet'
CREATE TABLE [dbo].[PodesavaSet] (
    [NormerIdRad] int  NOT NULL,
    [TrakaOznTr] int  NOT NULL,
    [BrzTr] int  NOT NULL
);
GO

-- Creating table 'GotovProizvodSet'
CREATE TABLE [dbo].[GotovProizvodSet] (
    [SrBrPr] int  NOT NULL,
    [Cena] int  NOT NULL,
    [DuzPr] int  NOT NULL,
    [SirPr] int  NOT NULL,
    [ProizvodnjaOznProiz] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Direktor'
CREATE TABLE [dbo].[RadnikSet_Direktor] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Sef'
CREATE TABLE [dbo].[RadnikSet_Sef] (
    [DirektorIdRad] int  NOT NULL,
    [Odsek] int  NOT NULL,
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Magacioner'
CREATE TABLE [dbo].[RadnikSet_Magacioner] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_SefPripreme'
CREATE TABLE [dbo].[RadnikSet_SefPripreme] (
    [PripremaOznPrip] int  NULL,
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_SefProizvodnje'
CREATE TABLE [dbo].[RadnikSet_SefProizvodnje] (
    [ProizvodnjaOznProiz] int  NULL,
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Majstorica'
CREATE TABLE [dbo].[RadnikSet_Majstorica] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_RadnikNaTraci'
CREATE TABLE [dbo].[RadnikSet_RadnikNaTraci] (
    [KoefRad] float  NOT NULL,
    [Spec] int  NOT NULL,
    [TrakaOznTr] int  NULL,
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_RadnikSaAlatom'
CREATE TABLE [dbo].[RadnikSet_RadnikSaAlatom] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_RadnikZaMasinom'
CREATE TABLE [dbo].[RadnikSet_RadnikZaMasinom] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Normer'
CREATE TABLE [dbo].[RadnikSet_Normer] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'TrakaSet_TrakaUPripremi'
CREATE TABLE [dbo].[TrakaSet_TrakaUPripremi] (
    [PripremaOznPrip] int  NOT NULL,
    [OznTr] int  NOT NULL
);
GO

-- Creating table 'TrakaSet_TrakaUProizvodnji'
CREATE TABLE [dbo].[TrakaSet_TrakaUProizvodnji] (
    [ProizvodnjaOznProiz] int  NOT NULL,
    [OznTr] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdRad] in table 'RadnikSet'
ALTER TABLE [dbo].[RadnikSet]
ADD CONSTRAINT [PK_RadnikSet]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [OznPrip] in table 'PripremaSet'
ALTER TABLE [dbo].[PripremaSet]
ADD CONSTRAINT [PK_PripremaSet]
    PRIMARY KEY CLUSTERED ([OznPrip] ASC);
GO

-- Creating primary key on [OznProiz] in table 'ProizvodnjaSet'
ALTER TABLE [dbo].[ProizvodnjaSet]
ADD CONSTRAINT [PK_ProizvodnjaSet]
    PRIMARY KEY CLUSTERED ([OznProiz] ASC);
GO

-- Creating primary key on [OznMat] in table 'MaterijalSet'
ALTER TABLE [dbo].[MaterijalSet]
ADD CONSTRAINT [PK_MaterijalSet]
    PRIMARY KEY CLUSTERED ([OznMat] ASC);
GO

-- Creating primary key on [OznTr] in table 'TrakaSet'
ALTER TABLE [dbo].[TrakaSet]
ADD CONSTRAINT [PK_TrakaSet]
    PRIMARY KEY CLUSTERED ([OznTr] ASC);
GO

-- Creating primary key on [SrBrMsn] in table 'MasinaSet'
ALTER TABLE [dbo].[MasinaSet]
ADD CONSTRAINT [PK_MasinaSet]
    PRIMARY KEY CLUSTERED ([SrBrMsn] ASC);
GO

-- Creating primary key on [SrBrAl] in table 'AlatSet'
ALTER TABLE [dbo].[AlatSet]
ADD CONSTRAINT [PK_AlatSet]
    PRIMARY KEY CLUSTERED ([SrBrAl] ASC);
GO

-- Creating primary key on [MagacionerIdRad], [MaterijalOznMat] in table 'OdnosiSet'
ALTER TABLE [dbo].[OdnosiSet]
ADD CONSTRAINT [PK_OdnosiSet]
    PRIMARY KEY CLUSTERED ([MagacionerIdRad], [MaterijalOznMat] ASC);
GO

-- Creating primary key on [MajstoricaIdRad], [RadnikNaTraciIdRad] in table 'ObucavaSet'
ALTER TABLE [dbo].[ObucavaSet]
ADD CONSTRAINT [PK_ObucavaSet]
    PRIMARY KEY CLUSTERED ([MajstoricaIdRad], [RadnikNaTraciIdRad] ASC);
GO

-- Creating primary key on [MajstoricaIdRad], [RadnikNaTraciIdRad2] in table 'KontroliseSet'
ALTER TABLE [dbo].[KontroliseSet]
ADD CONSTRAINT [PK_KontroliseSet]
    PRIMARY KEY CLUSTERED ([MajstoricaIdRad], [RadnikNaTraciIdRad2] ASC);
GO

-- Creating primary key on [RadnikSaAlatomIdRad], [AlatSrBrAl] in table 'KoristiSet'
ALTER TABLE [dbo].[KoristiSet]
ADD CONSTRAINT [PK_KoristiSet]
    PRIMARY KEY CLUSTERED ([RadnikSaAlatomIdRad], [AlatSrBrAl] ASC);
GO

-- Creating primary key on [RadnikZaMasinomIdRad], [MasinaSrBrMsn] in table 'UpotrebljavaSet'
ALTER TABLE [dbo].[UpotrebljavaSet]
ADD CONSTRAINT [PK_UpotrebljavaSet]
    PRIMARY KEY CLUSTERED ([RadnikZaMasinomIdRad], [MasinaSrBrMsn] ASC);
GO

-- Creating primary key on [NormerIdRad], [TrakaOznTr] in table 'PodesavaSet'
ALTER TABLE [dbo].[PodesavaSet]
ADD CONSTRAINT [PK_PodesavaSet]
    PRIMARY KEY CLUSTERED ([NormerIdRad], [TrakaOznTr] ASC);
GO

-- Creating primary key on [SrBrPr] in table 'GotovProizvodSet'
ALTER TABLE [dbo].[GotovProizvodSet]
ADD CONSTRAINT [PK_GotovProizvodSet]
    PRIMARY KEY CLUSTERED ([SrBrPr] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_Direktor'
ALTER TABLE [dbo].[RadnikSet_Direktor]
ADD CONSTRAINT [PK_RadnikSet_Direktor]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_Sef'
ALTER TABLE [dbo].[RadnikSet_Sef]
ADD CONSTRAINT [PK_RadnikSet_Sef]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_Magacioner'
ALTER TABLE [dbo].[RadnikSet_Magacioner]
ADD CONSTRAINT [PK_RadnikSet_Magacioner]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_SefPripreme'
ALTER TABLE [dbo].[RadnikSet_SefPripreme]
ADD CONSTRAINT [PK_RadnikSet_SefPripreme]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_SefProizvodnje'
ALTER TABLE [dbo].[RadnikSet_SefProizvodnje]
ADD CONSTRAINT [PK_RadnikSet_SefProizvodnje]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_Majstorica'
ALTER TABLE [dbo].[RadnikSet_Majstorica]
ADD CONSTRAINT [PK_RadnikSet_Majstorica]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_RadnikNaTraci'
ALTER TABLE [dbo].[RadnikSet_RadnikNaTraci]
ADD CONSTRAINT [PK_RadnikSet_RadnikNaTraci]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_RadnikSaAlatom'
ALTER TABLE [dbo].[RadnikSet_RadnikSaAlatom]
ADD CONSTRAINT [PK_RadnikSet_RadnikSaAlatom]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_RadnikZaMasinom'
ALTER TABLE [dbo].[RadnikSet_RadnikZaMasinom]
ADD CONSTRAINT [PK_RadnikSet_RadnikZaMasinom]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_Normer'
ALTER TABLE [dbo].[RadnikSet_Normer]
ADD CONSTRAINT [PK_RadnikSet_Normer]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [OznTr] in table 'TrakaSet_TrakaUPripremi'
ALTER TABLE [dbo].[TrakaSet_TrakaUPripremi]
ADD CONSTRAINT [PK_TrakaSet_TrakaUPripremi]
    PRIMARY KEY CLUSTERED ([OznTr] ASC);
GO

-- Creating primary key on [OznTr] in table 'TrakaSet_TrakaUProizvodnji'
ALTER TABLE [dbo].[TrakaSet_TrakaUProizvodnji]
ADD CONSTRAINT [PK_TrakaSet_TrakaUProizvodnji]
    PRIMARY KEY CLUSTERED ([OznTr] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DirektorIdRad] in table 'RadnikSet_Sef'
ALTER TABLE [dbo].[RadnikSet_Sef]
ADD CONSTRAINT [FK_DirektorSef]
    FOREIGN KEY ([DirektorIdRad])
    REFERENCES [dbo].[RadnikSet_Direktor]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirektorSef'
CREATE INDEX [IX_FK_DirektorSef]
ON [dbo].[RadnikSet_Sef]
    ([DirektorIdRad]);
GO

-- Creating foreign key on [MagacionerIdRad] in table 'OdnosiSet'
ALTER TABLE [dbo].[OdnosiSet]
ADD CONSTRAINT [FK_MagacionerOdnosi]
    FOREIGN KEY ([MagacionerIdRad])
    REFERENCES [dbo].[RadnikSet_Magacioner]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaterijalOznMat] in table 'OdnosiSet'
ALTER TABLE [dbo].[OdnosiSet]
ADD CONSTRAINT [FK_MaterijalOdnosi]
    FOREIGN KEY ([MaterijalOznMat])
    REFERENCES [dbo].[MaterijalSet]
        ([OznMat])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterijalOdnosi'
CREATE INDEX [IX_FK_MaterijalOdnosi]
ON [dbo].[OdnosiSet]
    ([MaterijalOznMat]);
GO

-- Creating foreign key on [Priprema_OznPrip] in table 'MaterijalSet'
ALTER TABLE [dbo].[MaterijalSet]
ADD CONSTRAINT [FK_MaterijalPriprema]
    FOREIGN KEY ([Priprema_OznPrip])
    REFERENCES [dbo].[PripremaSet]
        ([OznPrip])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterijalPriprema'
CREATE INDEX [IX_FK_MaterijalPriprema]
ON [dbo].[MaterijalSet]
    ([Priprema_OznPrip]);
GO

-- Creating foreign key on [PripremaOznPrip] in table 'RadnikSet_SefPripreme'
ALTER TABLE [dbo].[RadnikSet_SefPripreme]
ADD CONSTRAINT [FK_NadgledaPripremu]
    FOREIGN KEY ([PripremaOznPrip])
    REFERENCES [dbo].[PripremaSet]
        ([OznPrip])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NadgledaPripremu'
CREATE INDEX [IX_FK_NadgledaPripremu]
ON [dbo].[RadnikSet_SefPripreme]
    ([PripremaOznPrip]);
GO

-- Creating foreign key on [ProizvodnjaOznProiz] in table 'RadnikSet_SefProizvodnje'
ALTER TABLE [dbo].[RadnikSet_SefProizvodnje]
ADD CONSTRAINT [FK_NadgledaProizvodnju]
    FOREIGN KEY ([ProizvodnjaOznProiz])
    REFERENCES [dbo].[ProizvodnjaSet]
        ([OznProiz])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NadgledaProizvodnju'
CREATE INDEX [IX_FK_NadgledaProizvodnju]
ON [dbo].[RadnikSet_SefProizvodnje]
    ([ProizvodnjaOznProiz]);
GO

-- Creating foreign key on [MajstoricaIdRad] in table 'ObucavaSet'
ALTER TABLE [dbo].[ObucavaSet]
ADD CONSTRAINT [FK_ObucavaMajstorica]
    FOREIGN KEY ([MajstoricaIdRad])
    REFERENCES [dbo].[RadnikSet_Majstorica]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RadnikNaTraciIdRad] in table 'ObucavaSet'
ALTER TABLE [dbo].[ObucavaSet]
ADD CONSTRAINT [FK_ObucavaRadnikNaTraci]
    FOREIGN KEY ([RadnikNaTraciIdRad])
    REFERENCES [dbo].[RadnikSet_RadnikNaTraci]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ObucavaRadnikNaTraci'
CREATE INDEX [IX_FK_ObucavaRadnikNaTraci]
ON [dbo].[ObucavaSet]
    ([RadnikNaTraciIdRad]);
GO

-- Creating foreign key on [MajstoricaIdRad] in table 'KontroliseSet'
ALTER TABLE [dbo].[KontroliseSet]
ADD CONSTRAINT [FK_KontroliseMajstorica]
    FOREIGN KEY ([MajstoricaIdRad])
    REFERENCES [dbo].[RadnikSet_Majstorica]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RadnikNaTraciIdRad2] in table 'KontroliseSet'
ALTER TABLE [dbo].[KontroliseSet]
ADD CONSTRAINT [FK_KontroliseRadnikNaTraci]
    FOREIGN KEY ([RadnikNaTraciIdRad2])
    REFERENCES [dbo].[RadnikSet_RadnikNaTraci]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KontroliseRadnikNaTraci'
CREATE INDEX [IX_FK_KontroliseRadnikNaTraci]
ON [dbo].[KontroliseSet]
    ([RadnikNaTraciIdRad2]);
GO

-- Creating foreign key on [RadnikSaAlatomIdRad] in table 'KoristiSet'
ALTER TABLE [dbo].[KoristiSet]
ADD CONSTRAINT [FK_KoristiRadnikSaAlatom]
    FOREIGN KEY ([RadnikSaAlatomIdRad])
    REFERENCES [dbo].[RadnikSet_RadnikSaAlatom]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AlatSrBrAl] in table 'KoristiSet'
ALTER TABLE [dbo].[KoristiSet]
ADD CONSTRAINT [FK_KoristiAlat]
    FOREIGN KEY ([AlatSrBrAl])
    REFERENCES [dbo].[AlatSet]
        ([SrBrAl])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KoristiAlat'
CREATE INDEX [IX_FK_KoristiAlat]
ON [dbo].[KoristiSet]
    ([AlatSrBrAl]);
GO

-- Creating foreign key on [RadnikZaMasinomIdRad] in table 'UpotrebljavaSet'
ALTER TABLE [dbo].[UpotrebljavaSet]
ADD CONSTRAINT [FK_RadnikZaMasinomUpotrebljava]
    FOREIGN KEY ([RadnikZaMasinomIdRad])
    REFERENCES [dbo].[RadnikSet_RadnikZaMasinom]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MasinaSrBrMsn] in table 'UpotrebljavaSet'
ALTER TABLE [dbo].[UpotrebljavaSet]
ADD CONSTRAINT [FK_MasinaUpotrebljava]
    FOREIGN KEY ([MasinaSrBrMsn])
    REFERENCES [dbo].[MasinaSet]
        ([SrBrMsn])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MasinaUpotrebljava'
CREATE INDEX [IX_FK_MasinaUpotrebljava]
ON [dbo].[UpotrebljavaSet]
    ([MasinaSrBrMsn]);
GO

-- Creating foreign key on [TrakaOznTr] in table 'RadnikSet_RadnikNaTraci'
ALTER TABLE [dbo].[RadnikSet_RadnikNaTraci]
ADD CONSTRAINT [FK_TrakaRadnikNaTraci]
    FOREIGN KEY ([TrakaOznTr])
    REFERENCES [dbo].[TrakaSet]
        ([OznTr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrakaRadnikNaTraci'
CREATE INDEX [IX_FK_TrakaRadnikNaTraci]
ON [dbo].[RadnikSet_RadnikNaTraci]
    ([TrakaOznTr]);
GO

-- Creating foreign key on [NormerIdRad] in table 'PodesavaSet'
ALTER TABLE [dbo].[PodesavaSet]
ADD CONSTRAINT [FK_NormerPodesava]
    FOREIGN KEY ([NormerIdRad])
    REFERENCES [dbo].[RadnikSet_Normer]
        ([IdRad])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TrakaOznTr] in table 'PodesavaSet'
ALTER TABLE [dbo].[PodesavaSet]
ADD CONSTRAINT [FK_TrakaPodesava]
    FOREIGN KEY ([TrakaOznTr])
    REFERENCES [dbo].[TrakaSet]
        ([OznTr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrakaPodesava'
CREATE INDEX [IX_FK_TrakaPodesava]
ON [dbo].[PodesavaSet]
    ([TrakaOznTr]);
GO

-- Creating foreign key on [ProizvodnjaOznProiz] in table 'GotovProizvodSet'
ALTER TABLE [dbo].[GotovProizvodSet]
ADD CONSTRAINT [FK_Proizvodi]
    FOREIGN KEY ([ProizvodnjaOznProiz])
    REFERENCES [dbo].[ProizvodnjaSet]
        ([OznProiz])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Proizvodi'
CREATE INDEX [IX_FK_Proizvodi]
ON [dbo].[GotovProizvodSet]
    ([ProizvodnjaOznProiz]);
GO

-- Creating foreign key on [PripremaOznPrip] in table 'TrakaSet_TrakaUPripremi'
ALTER TABLE [dbo].[TrakaSet_TrakaUPripremi]
ADD CONSTRAINT [FK_NalaziSe]
    FOREIGN KEY ([PripremaOznPrip])
    REFERENCES [dbo].[PripremaSet]
        ([OznPrip])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NalaziSe'
CREATE INDEX [IX_FK_NalaziSe]
ON [dbo].[TrakaSet_TrakaUPripremi]
    ([PripremaOznPrip]);
GO

-- Creating foreign key on [ProizvodnjaOznProiz] in table 'TrakaSet_TrakaUProizvodnji'
ALTER TABLE [dbo].[TrakaSet_TrakaUProizvodnji]
ADD CONSTRAINT [FK_ProizvodnjaTrakaUProizvodnji]
    FOREIGN KEY ([ProizvodnjaOznProiz])
    REFERENCES [dbo].[ProizvodnjaSet]
        ([OznProiz])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProizvodnjaTrakaUProizvodnji'
CREATE INDEX [IX_FK_ProizvodnjaTrakaUProizvodnji]
ON [dbo].[TrakaSet_TrakaUProizvodnji]
    ([ProizvodnjaOznProiz]);
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_Direktor'
ALTER TABLE [dbo].[RadnikSet_Direktor]
ADD CONSTRAINT [FK_Direktor_inherits_Radnik]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_Sef'
ALTER TABLE [dbo].[RadnikSet_Sef]
ADD CONSTRAINT [FK_Sef_inherits_Radnik]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_Magacioner'
ALTER TABLE [dbo].[RadnikSet_Magacioner]
ADD CONSTRAINT [FK_Magacioner_inherits_Radnik]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_SefPripreme'
ALTER TABLE [dbo].[RadnikSet_SefPripreme]
ADD CONSTRAINT [FK_SefPripreme_inherits_Sef]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet_Sef]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_SefProizvodnje'
ALTER TABLE [dbo].[RadnikSet_SefProizvodnje]
ADD CONSTRAINT [FK_SefProizvodnje_inherits_Sef]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet_Sef]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_Majstorica'
ALTER TABLE [dbo].[RadnikSet_Majstorica]
ADD CONSTRAINT [FK_Majstorica_inherits_Radnik]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_RadnikNaTraci'
ALTER TABLE [dbo].[RadnikSet_RadnikNaTraci]
ADD CONSTRAINT [FK_RadnikNaTraci_inherits_Radnik]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_RadnikSaAlatom'
ALTER TABLE [dbo].[RadnikSet_RadnikSaAlatom]
ADD CONSTRAINT [FK_RadnikSaAlatom_inherits_RadnikNaTraci]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet_RadnikNaTraci]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_RadnikZaMasinom'
ALTER TABLE [dbo].[RadnikSet_RadnikZaMasinom]
ADD CONSTRAINT [FK_RadnikZaMasinom_inherits_RadnikNaTraci]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet_RadnikNaTraci]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdRad] in table 'RadnikSet_Normer'
ALTER TABLE [dbo].[RadnikSet_Normer]
ADD CONSTRAINT [FK_Normer_inherits_Radnik]
    FOREIGN KEY ([IdRad])
    REFERENCES [dbo].[RadnikSet]
        ([IdRad])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [OznTr] in table 'TrakaSet_TrakaUPripremi'
ALTER TABLE [dbo].[TrakaSet_TrakaUPripremi]
ADD CONSTRAINT [FK_TrakaUPripremi_inherits_Traka]
    FOREIGN KEY ([OznTr])
    REFERENCES [dbo].[TrakaSet]
        ([OznTr])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [OznTr] in table 'TrakaSet_TrakaUProizvodnji'
ALTER TABLE [dbo].[TrakaSet_TrakaUProizvodnji]
ADD CONSTRAINT [FK_TrakaUProizvodnji_inherits_Traka]
    FOREIGN KEY ([OznTr])
    REFERENCES [dbo].[TrakaSet]
        ([OznTr])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------