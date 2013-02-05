﻿CREATE VIEW [dbo].[V_OrderDetail]
AS
SELECT     dbo.LS_Products.s_Product_ID AS Product_IDchar, dbo.LS_Products.s_Name AS Product_Name, dt.s_ID, dt.s_OrderID, dt.s_Product_ID, dt.f_Quantity, 
                      dt.m_Price, dt.f_Discount, dt.m_Discount, dt.f_VAT, ((dt.m_Price - dt.m_Discount) * dt.f_Quantity) * (1 - dt.f_Discount / 100) AS m_Total, dt.s_Store_ID, 
                      ISNULL(dbo.PR_Product_Units.s_Unit, dt.s_Unit) AS s_Unit, dt.f_Convert, dt.s_Note, dt.i_Ordinal, dt.b_isPromotion, dt.b_isFix, 
                      dbo.LS_Products.s_ProductGroupID AS GroupKey, dbo.LS_ProductGroups.s_ProductGroup_ID AS GroupID, 
                      dbo.LS_ProductGroups.s_Name AS GroupName, dt.s_Purchase_ID, dt.s_TableName
FROM         dbo.LS_ProductGroups INNER JOIN
                      dbo.LS_Products ON dbo.LS_ProductGroups.s_ID = dbo.LS_Products.s_ProductGroupID RIGHT OUTER JOIN
                      dbo.V_FullOrderDetails AS dt LEFT OUTER JOIN
                      dbo.PR_Product_Units ON dt.s_Unit = dbo.PR_Product_Units.s_ID ON dbo.LS_Products.s_ID = dt.s_Product_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[20] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "LS_ProductGroups"
            Begin Extent = 
               Top = 6
               Left = 645
               Bottom = 121
               Right = 820
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Products"
            Begin Extent = 
               Top = 9
               Left = 438
               Bottom = 214
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "dt"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 191
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "PR_Product_Units"
            Begin Extent = 
               Top = 236
               Left = 543
               Bottom = 388
               Right = 852
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1800
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'1350
      End
   End
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderDetail';

