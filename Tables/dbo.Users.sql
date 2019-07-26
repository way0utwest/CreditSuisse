CREATE TABLE [dbo].[Users]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[Username] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NTAuthAccount] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[modifieddate] [datetime] NULL,
[modifiedby] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[statusid] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([UserID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK__Users__statusid__7EF6D905] FOREIGN KEY ([statusid]) REFERENCES [dbo].[Status] ([Statusid])
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'Username'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'331F0B13-76B5-2F1B-A77B-DEF5A73C73C2', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'Username'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Credentials', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'Username'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'C64ABA7B-3A3E-95B6-535D-3BC535DA5A59', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'Username'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'NTAuthAccount'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'331F0B13-76B5-2F1B-A77B-DEF5A73C73C2', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'NTAuthAccount'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Financial', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'NTAuthAccount'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'C44193E1-0E58-4B2A-9001-F7D6E7BC1373', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'NTAuthAccount'
GO
