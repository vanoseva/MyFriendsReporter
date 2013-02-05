CREATE TABLE [dbo].[tblConfigStore] (
    [ID]                 INT            NULL,
    [PaymentOtherImport] NVARCHAR (50)  NULL,
    [PaymentOtherOrder]  NVARCHAR (50)  NULL,
    [Note]               NVARCHAR (500) NULL,
    [b_TrackInstock]     BIT            NULL,
    [b_Col1]             BIT            NULL,
    [b_Col2]             BIT            NULL,
    [s_Col1]             NVARCHAR (50)  NULL,
    [s_Col2]             NVARCHAR (50)  NULL,
    [s_ThuTamUng]        NVARCHAR (50)  NULL,
    [s_MethodHH]         NVARCHAR (50)  NULL,
    [s_MethodCL]         NVARCHAR (50)  NULL,
    [s_MethodTU]         NVARCHAR (50)  NULL,
    [s_TransCurrInc]     NVARCHAR (50)  NULL,
    [s_TransCurrOut]     NVARCHAR (50)  NULL,
    [StoreBarID]         NVARCHAR (50)  NULL,
    [StoreBepID]         NVARCHAR (50)  NULL,
    [ThuNganNopTien]     NVARCHAR (50)  NULL
);

