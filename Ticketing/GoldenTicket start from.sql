/*
 Navicat Premium Data Transfer

 Source Server         : Ticketing Locally
 Source Server Type    : SQL Server
 Source Server Version : 13004001
 Source Host           : (localdb)\MSSQLLocalDB:1433
 Source Catalog        : Ticketing
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13004001
 File Encoding         : 65001

 Date: 14/09/2023 13:35:44
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------
INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180412234455_Intial', N'7.0.11')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180418041154_Ticet Date Closed', N'7.0.11')
GO


-- ----------------------------
-- Table structure for AspNetRoleClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoleClaims]
GO

CREATE TABLE [dbo].[AspNetRoleClaims] (
  [Id] int  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetRoleClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoleClaims
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoles]
GO

CREATE TABLE [dbo].[AspNetRoles] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Name] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoles
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUserClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserClaims]
GO

CREATE TABLE [dbo].[AspNetUserClaims] (
  [Id] int  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserClaims
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUserLogins
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserLogins]
GO

CREATE TABLE [dbo].[AspNetUserLogins] (
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderKey] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderDisplayName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserLogins] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserLogins
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUserRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserRoles]
GO

CREATE TABLE [dbo].[AspNetUserRoles] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserRoles
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUsers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUsers]
GO

CREATE TABLE [dbo].[AspNetUsers] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AccessFailedCount] int  NOT NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DateAdded] datetime2(7)  NOT NULL,
  [Email] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailConfirmed] bit  NOT NULL,
  [FirstName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsAdmin] bit  NOT NULL,
  [LastName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LockoutEnabled] bit  NOT NULL,
  [LockoutEnd] datetimeoffset(7)  NULL,
  [NormalizedEmail] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedUserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PasswordHash] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumberConfirmed] bit  NOT NULL,
  [SecurityStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TwoFactorEnabled] bit  NOT NULL,
  [UserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUsers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUsers
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUserTokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserTokens]
GO

CREATE TABLE [dbo].[AspNetUserTokens] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUserTokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserTokens
-- ----------------------------

-- ----------------------------
-- Table structure for Clients
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type IN ('U'))
	DROP TABLE [dbo].[Clients]
GO

CREATE TABLE [dbo].[Clients] (
  [Id] uniqueidentifier  NOT NULL,
  [Address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Company] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DateAdded] datetime2(7)  NOT NULL,
  [EmailAddress] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FirstName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Clients] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Clients
-- ----------------------------

-- ----------------------------
-- Table structure for TechnicianTicketTimes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TechnicianTicketTimes]') AND type IN ('U'))
	DROP TABLE [dbo].[TechnicianTicketTimes]
GO

CREATE TABLE [dbo].[TechnicianTicketTimes] (
  [Id] uniqueidentifier  NOT NULL,
  [End] datetime2(7)  NOT NULL,
  [Start] datetime2(7)  NOT NULL,
  [TechnicianId] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TicketId] uniqueidentifier  NOT NULL
)
GO

ALTER TABLE [dbo].[TechnicianTicketTimes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TechnicianTicketTimes
-- ----------------------------

-- ----------------------------
-- Table structure for Tickets
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Tickets]') AND type IN ('U'))
	DROP TABLE [dbo].[Tickets]
GO

CREATE TABLE [dbo].[Tickets] (
  [Id] uniqueidentifier  NOT NULL,
  [ClientId] uniqueidentifier  NOT NULL,
  [Complexity] int  NOT NULL,
  [DateAdded] datetime2(7)  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsUrgent] bit  NOT NULL,
  [Notes] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Open] bit  NOT NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DateClosed] datetime2(7) DEFAULT '0001-01-01T00:00:00.0000000' NOT NULL
)
GO

ALTER TABLE [dbo].[Tickets] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Tickets
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetRoleClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId]
ON [dbo].[AspNetRoleClaims] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetRoles
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
ON [dbo].[AspNetRoles] (
  [NormalizedName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoles] ADD CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId]
ON [dbo].[AspNetUserClaims] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserLogins
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId]
ON [dbo].[AspNetUserLogins] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId]
ON [dbo].[AspNetUserRoles] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUsers
-- ----------------------------
CREATE NONCLUSTERED INDEX [EmailIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedEmail] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedUserName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUsers
-- ----------------------------
ALTER TABLE [dbo].[AspNetUsers] ADD CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [Name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Clients
-- ----------------------------
ALTER TABLE [dbo].[Clients] ADD CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TechnicianTicketTimes
-- ----------------------------
ALTER TABLE [dbo].[TechnicianTicketTimes] ADD CONSTRAINT [PK_TechnicianTicketTimes] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Tickets
-- ----------------------------
ALTER TABLE [dbo].[Tickets] ADD CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

