CREATE TABLE [dbo].[Contacts]
(
[ContactsID] [int] NOT NULL IDENTITY(1, 1),
[ContactFullName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PhoneWork] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneMobile] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address3] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CountryCode] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JoiningDate] [datetime] NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [dfSysUTCDate] DEFAULT (sysdatetime()),
[Email] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Photo] [image] NULL,
[ModifiedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StatusID] [tinyint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts] ADD CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED  ([ContactsID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential - GDPR', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneWork'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'989ADC05-3F3F-0588-A635-F475B994915B', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneWork'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Contact Info', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneWork'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'5C503E21-22C6-81FA-620B-F369B8EC38D1', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneWork'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential - GDPR', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneMobile'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'989ADC05-3F3F-0588-A635-F475B994915B', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneMobile'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Contact Info', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneMobile'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'5C503E21-22C6-81FA-620B-F369B8EC38D1', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'PhoneMobile'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential - GDPR', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address1'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'989ADC05-3F3F-0588-A635-F475B994915B', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address1'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Contact Info', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address1'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'5C503E21-22C6-81FA-620B-F369B8EC38D1', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address1'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential - GDPR', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address2'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'989ADC05-3F3F-0588-A635-F475B994915B', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address2'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Contact Info', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address2'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'5C503E21-22C6-81FA-620B-F369B8EC38D1', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address2'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential - GDPR', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address3'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'989ADC05-3F3F-0588-A635-F475B994915B', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address3'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Contact Info', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address3'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'5C503E21-22C6-81FA-620B-F369B8EC38D1', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Address3'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_name', N'Confidential - GDPR', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'sys_sensitivity_label_id', N'989ADC05-3F3F-0588-A635-F475B994915B', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'sys_information_type_name', N'Contact Info', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'sys_information_type_id', N'5C503E21-22C6-81FA-620B-F369B8EC38D1', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Email'
GO
