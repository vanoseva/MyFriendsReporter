CREATE TABLE [dbo].[Ls_ConfigCenterShowDefault] (
    [s_ModuleID]    NVARCHAR (50) NOT NULL,
    [i_Type]        INT           NULL,
    [s_URL]         NVARCHAR (50) NULL,
    [im_Background] IMAGE         NULL,
    [i_List]        INT           NULL,
    CONSTRAINT [PK_Ls_ConfigCenterShowDefault] PRIMARY KEY CLUSTERED ([s_ModuleID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'laytu lsconfigmydesk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_ConfigCenterShowDefault', @level2type = N'COLUMN', @level2name = N'i_List';

