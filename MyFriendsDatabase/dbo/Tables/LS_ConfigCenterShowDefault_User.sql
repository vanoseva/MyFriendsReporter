CREATE TABLE [dbo].[LS_ConfigCenterShowDefault_User] (
    [s_ModuleID]    NVARCHAR (50) NOT NULL,
    [s_UID]         NVARCHAR (50) NOT NULL,
    [i_Type]        INT           NULL,
    [s_URL]         NVARCHAR (50) NULL,
    [i_List]        INT           NULL,
    [im_Background] IMAGE         NULL,
    CONSTRAINT [PK_LS_ConfigCenterShowDefault_User] PRIMARY KEY CLUSTERED ([s_ModuleID] ASC, [s_UID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1: mac dinh la URL, 2: i_List, 3: im_Background', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_ConfigCenterShowDefault_User', @level2type = N'COLUMN', @level2name = N'i_Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'laytu lsconfigmydesk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_ConfigCenterShowDefault_User', @level2type = N'COLUMN', @level2name = N'i_List';

