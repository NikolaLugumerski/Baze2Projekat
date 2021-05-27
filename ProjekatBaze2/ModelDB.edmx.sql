
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/27/2021 15:24:00
-- Generated from EDMX file: C:\Users\Lugi\source\repos\ProjekatBaze2\ProjekatBaze2\ModelDB.edmx
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'RadnikSet'
CREATE TABLE [dbo].[RadnikSet] (
    [IdRad] int IDENTITY(1,1) NOT NULL,
    [Ime] nvarchar(max)  NOT NULL,
    [Prz] nvarchar(max)  NOT NULL,
    [Plt] int  NOT NULL
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
    [PripremaOznPrip] int  NOT NULL
);
GO

-- Creating table 'TrakaSet'
CREATE TABLE [dbo].[TrakaSet] (
    [OznTr] int IDENTITY(1,1) NOT NULL
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

-- Creating table 'RadnikSet_Direktor'
CREATE TABLE [dbo].[RadnikSet_Direktor] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Sef'
CREATE TABLE [dbo].[RadnikSet_Sef] (
    [DirektorIdRad] int  NOT NULL,
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_SefPripreme'
CREATE TABLE [dbo].[RadnikSet_SefPripreme] (
    [IdRad] int  NOT NULL,
    [Priprema_OznPrip] int  NULL
);
GO

-- Creating table 'RadnikSet_SefProizvodnje'
CREATE TABLE [dbo].[RadnikSet_SefProizvodnje] (
    [IdRad] int  NOT NULL,
    [Proizvodnja_OznProiz] int  NULL
);
GO

-- Creating table 'TrakaSet_TrakaUPripremi'
CREATE TABLE [dbo].[TrakaSet_TrakaUPripremi] (
    [OznTr] int  NOT NULL,
    [Priprema_OznPrip] int  NOT NULL
);
GO

-- Creating table 'TrakaSet_TrakaUProizvodnji'
CREATE TABLE [dbo].[TrakaSet_TrakaUProizvodnji] (
    [OznTr] int  NOT NULL,
    [Proizvodnja_OznProiz] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Normer'
CREATE TABLE [dbo].[RadnikSet_Normer] (
    [IdRad] int  NOT NULL
);
GO

-- Creating table 'RadnikSet_Magacioner'
CREATE TABLE [dbo].[RadnikSet_Magacioner] (
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

-- Creating primary key on [IdRad] in table 'RadnikSet_Normer'
ALTER TABLE [dbo].[RadnikSet_Normer]
ADD CONSTRAINT [PK_RadnikSet_Normer]
    PRIMARY KEY CLUSTERED ([IdRad] ASC);
GO

-- Creating primary key on [IdRad] in table 'RadnikSet_Magacioner'
ALTER TABLE [dbo].[RadnikSet_Magacioner]
ADD CONSTRAINT [PK_RadnikSet_Magacioner]
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

-- Creating foreign key on [Priprema_OznPrip] in table 'RadnikSet_SefPripreme'
ALTER TABLE [dbo].[RadnikSet_SefPripreme]
ADD CONSTRAINT [FK_SefPripremePriprema]
    FOREIGN KEY ([Priprema_OznPrip])
    REFERENCES [dbo].[PripremaSet]
        ([OznPrip])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SefPripremePriprema'
CREATE INDEX [IX_FK_SefPripremePriprema]
ON [dbo].[RadnikSet_SefPripreme]
    ([Priprema_OznPrip]);
GO

-- Creating foreign key on [Proizvodnja_OznProiz] in table 'RadnikSet_SefProizvodnje'
ALTER TABLE [dbo].[RadnikSet_SefProizvodnje]
ADD CONSTRAINT [FK_SefProizvodnjeProizvodnja]
    FOREIGN KEY ([Proizvodnja_OznProiz])
    REFERENCES [dbo].[ProizvodnjaSet]
        ([OznProiz])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SefProizvodnjeProizvodnja'
CREATE INDEX [IX_FK_SefProizvodnjeProizvodnja]
ON [dbo].[RadnikSet_SefProizvodnje]
    ([Proizvodnja_OznProiz]);
GO

-- Creating foreign key on [Priprema_OznPrip] in table 'TrakaSet_TrakaUPripremi'
ALTER TABLE [dbo].[TrakaSet_TrakaUPripremi]
ADD CONSTRAINT [FK_TrakaUPripremiPriprema]
    FOREIGN KEY ([Priprema_OznPrip])
    REFERENCES [dbo].[PripremaSet]
        ([OznPrip])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrakaUPripremiPriprema'
CREATE INDEX [IX_FK_TrakaUPripremiPriprema]
ON [dbo].[TrakaSet_TrakaUPripremi]
    ([Priprema_OznPrip]);
GO

-- Creating foreign key on [Proizvodnja_OznProiz] in table 'TrakaSet_TrakaUProizvodnji'
ALTER TABLE [dbo].[TrakaSet_TrakaUProizvodnji]
ADD CONSTRAINT [FK_TrakaUProizvodnjiProizvodnja]
    FOREIGN KEY ([Proizvodnja_OznProiz])
    REFERENCES [dbo].[ProizvodnjaSet]
        ([OznProiz])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrakaUProizvodnjiProizvodnja'
CREATE INDEX [IX_FK_TrakaUProizvodnjiProizvodnja]
ON [dbo].[TrakaSet_TrakaUProizvodnji]
    ([Proizvodnja_OznProiz]);
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

-- Creating foreign key on [IdRad] in table 'RadnikSet_Normer'
ALTER TABLE [dbo].[RadnikSet_Normer]
ADD CONSTRAINT [FK_Normer_inherits_Radnik]
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------