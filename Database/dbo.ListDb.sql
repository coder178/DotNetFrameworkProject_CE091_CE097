CREATE TABLE [dbo].[ListDb] (
    [Id]          INT         IDENTITY (1, 1) NOT NULL,
    [title]       NCHAR (100) NOT NULL,
    [description] NCHAR (300) NOT NULL,
    [date]        DATETIME    NOT NULL,
    [Uid]         INT         NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [uid] FOREIGN KEY ([Uid]) REFERENCES [dbo].[UserDb] ([Id])
);

