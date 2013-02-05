CREATE VIEW [dbo].[v_importdetails]  
AS  
SELECT     ls.s_Product_ID AS Product_IDchar, ls.s_Name AS Product_Name, dt.s_ID, dt.s_Import_ID, dt.s_Product_ID, dt.f_Quantity, dt.m_Price, dt.s_Store_ID,   
                      ISNULL(dbo.PR_Product_Units.s_Unit, dt.s_Unit) AS s_Unit, dt.f_Convert, dt.f_QuantityOrder, dt.i_IDsort, dt.m_PriceUSD, dt.dt_OverDate, dt.f_Discount,   
                      dt.m_Discount, dt.s_Note, dt.f_Quantity * ((dt.m_Price - dt.m_Discount) - dt.m_Price * dt.f_Discount / 100) AS m_Total, dt.m_Price AS m_OriPrice  
FROM         dbo.PR_ImportDetail AS dt left outer JOIN  
                      dbo.LS_Products AS ls ON dt.s_Product_ID = ls.s_ID LEFT OUTER JOIN  
                      dbo.PR_Product_Units ON dt.s_Unit = dbo.PR_Product_Units.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[29] 2[19] 3) )"
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
         Begin Table = "dt"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ls"
            Begin Extent = 
               Top = 6
               Left = 281
               Bottom = 121
               Right = 450
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PR_Product_Units"
            Begin Extent = 
               Top = 6
               Left = 526
               Bottom = 121
               Right = 710
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
      Begin ColumnWidths = 20
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
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_importdetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_importdetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_importdetails';

