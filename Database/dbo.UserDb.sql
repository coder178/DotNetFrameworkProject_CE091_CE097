CREATE TABLE [dbo].[UserDb] (
    [Id]         INT        IDENTITY (1, 1) NOT NULL,
    [usename]    NCHAR (20) NOT NULL,
    [password]   NCHAR (10) NOT NULL,
    [name]       NCHAR (20) NOT NULL,
    [email]      NCHAR (40) NOT NULL,
    [contact_no] NCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

