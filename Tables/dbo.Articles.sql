CREATE TABLE [dbo].[Articles]
(
[ArticlesID] [int] NOT NULL IDENTITY(1, 1),
[AuthorID] [int] NULL,
[Title] [char] (142) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Article] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PublishDate] [datetime] NULL,
[ModifiedDate] [datetime] NULL,
[URL] [char] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comments] [int] NOT NULL CONSTRAINT [df_Zero] DEFAULT ((0)),
[ReadingTimeEstimate] [time] NULL,
[CreatedDate] [datetime2] (3) NOT NULL,
[ModifiedBy] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__Articles__Modifi__3F3159AB] DEFAULT (suser_name())
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[Articles_triu] ON [dbo].[Articles] FOR INSERT, UPDATE
AS
BEGIN
    UPDATE dbo.Articles
	 SET ModifiedDate = GETDATE()
	 , ModifiedBy = SUSER_SNAME()
	 FROM inserted i
	 WHERE i.ArticlesID = Articles.ArticlesID
END

GO
ALTER TABLE [dbo].[Articles] ADD CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED  ([ArticlesID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Highly Confidential - GDPR', 'SCHEMA', N'dbo', 'TABLE', N'Articles', 'COLUMN', N'ReadingTimeEstimate'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'3302ae7f-b8ac-46bc-97f8-378828781efd', 'SCHEMA', N'dbo', 'TABLE', N'Articles', 'COLUMN', N'ReadingTimeEstimate'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Other', 'SCHEMA', N'dbo', 'TABLE', N'Articles', 'COLUMN', N'ReadingTimeEstimate'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'9C5B4809-0CCC-0637-6547-91A6F8BB609D', 'SCHEMA', N'dbo', 'TABLE', N'Articles', 'COLUMN', N'ReadingTimeEstimate'
GO
