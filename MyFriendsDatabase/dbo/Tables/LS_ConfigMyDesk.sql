CREATE TABLE [dbo].[LS_ConfigMyDesk] (
    [s_ID]       INT           NOT NULL,
    [s_Key]      NVARCHAR (50) NULL,
    [s_Name]     NVARCHAR (50) NULL,
    [im_Photo]   IMAGE         NULL,
    [Uplevel]    INT           NULL,
    [i_IDSort]   INT           NULL,
    [isDefault]  BIT           NULL,
    [s_ModuleID] NVARCHAR (50) NULL,
    CONSTRAINT [PK_tblConfigMyDesk] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'true: load my desk mac dinh', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_ConfigMyDesk', @level2type = N'COLUMN', @level2name = N'isDefault';

