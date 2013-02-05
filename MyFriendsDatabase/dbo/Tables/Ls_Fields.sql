CREATE TABLE [dbo].[Ls_Fields] (
    [i_ID]           INT            NULL,
    [ColID]          NVARCHAR (50)  NULL,
    [ColName]        NVARCHAR (50)  NULL,
    [ViewName]       NVARCHAR (500) NULL,
    [s_TaskSearchID] NVARCHAR (50)  NULL,
    [isLoad]         BIT            NULL,
    [s_Type]         NVARCHAR (50)  NULL,
    [s_SearchType]   NVARCHAR (50)  NULL,
    [s_Value]        NVARCHAR (50)  NULL,
    [tblName]        NVARCHAR (500) NULL,
    [i_SortID]       INT            NULL,
    [isBaoGia]       BIT            NULL,
    [isDatBan]       BIT            NULL,
    [isXuatBan]      BIT            NULL,
    [isNhapTraHang]  BIT            NULL,
    [isThuTien]      BIT            NULL,
    [isDatMua]       BIT            NULL,
    [isNhapMua]      BIT            NULL,
    [isXuatTraHang]  BIT            NULL,
    [isChiTien]      BIT            NULL,
    [isChuyenKho]    BIT            NULL,
    [isNhapKhac]     BIT            NULL,
    [isXuatKhac]     BIT            NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên thuộc tính trong database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N'ColID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên thuộc tính dùng để hiển thị', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N'ColName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên View chứa thuộc tính ColID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N'ViewName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lấy s_ID từ bảng LS_TaskSearch', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N's_TaskSearchID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'True là cho load lên,False là không', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N'isLoad';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thuộc tính này thuộc kiểu dữ liệu nào để load toán tử cho phù hợp với kiểu dữ liệu đó', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N's_Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Loại tra cứu: tra cứu kh,tra cứu ncc,tra cứu hh', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N's_SearchType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Normal: thì load dữ liệu so sánh bình thường,List: thì load danh sách của dữ liệu so sánh tương ứng  với Thuộc tính đang chọn,Time: thì cho hiện control Từ ngày đến ngày', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N's_Value';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nếu s_Value là List thì tblName chứa Tên bảng cần để lấy danh sách dữ liệu so sánh', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N'tblName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số thứ tự', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N'i_SortID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Dùng để xác định thuộc tính này thuộc nghiệp vụ nào', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Fields', @level2type = N'COLUMN', @level2name = N'isBaoGia';

