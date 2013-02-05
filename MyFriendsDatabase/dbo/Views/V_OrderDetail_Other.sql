CREATE VIEW [dbo].[V_OrderDetail_Other]
AS
SELECT     dbo.PR_OrderDetail_Other.s_ID, dbo.PR_OrderDetail_Other.s_OrderID, dbo.PR_OrderDetail_Other.s_Product_ID, 
                      dbo.PR_OrderDetail_Other.f_Quantity, dbo.PR_OrderDetail_Other.m_Price, dbo.PR_OrderDetail_Other.s_Store_ID, 
                      dbo.PR_OrderDetail_Other.f_Convert, dbo.PR_OrderDetail_Other.s_Note, dbo.PR_OrderDetail_Other.i_Ordinal, 
                      dbo.LS_Products.s_Name AS Product_Name, dbo.PR_OrderDetail_Other.f_Quantity * dbo.PR_OrderDetail_Other.m_Price AS m_Total, 
                      ISNULL(dbo.PR_Product_Units.s_Unit, dbo.PR_OrderDetail_Other.s_Unit) AS s_Unit, dbo.LS_Products.s_Product_ID AS Product_IDchar
FROM         dbo.PR_OrderDetail_Other LEFT OUTER JOIN
                      dbo.LS_Products ON dbo.PR_OrderDetail_Other.s_Product_ID = dbo.LS_Products.s_ID LEFT OUTER JOIN
                      dbo.PR_Product_Units ON dbo.PR_OrderDetail_Other.s_Unit = dbo.PR_Product_Units.s_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[13] 2[21] 3) )"
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
         Begin Table = "PR_OrderDetail_Other"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 283
               Right = 305
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Products"
            Begin Extent = 
               Top = 25
               Left = 436
               Bottom = 208
               Right = 605
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PR_Product_Units"
            Begin Extent = 
               Top = 212
               Left = 434
               Bottom = 327
               Right = 618
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
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 3120
         Alias = 900
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
         Or = 1350
      End
   End
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderDetail_Other';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderDetail_Other';

