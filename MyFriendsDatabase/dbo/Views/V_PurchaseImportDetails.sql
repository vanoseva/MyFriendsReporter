CREATE VIEW [dbo].[V_PurchaseImportDetails]
AS
SELECT     p.s_ID, p.s_OrderID, p.s_Product_ID, p.f_Convert, p.f_Quantity, p.f_QuantityReceive, p.m_Price, p.f_Discount, p.m_Discount, p.i_IDSort, p.s_Note, 
                      p.f_Tax, ISNULL(proUnit.s_Unit, lsPro.s_Unit) AS s_Unit, (p.f_Quantity * p.m_Price - p.m_Discount) 
                      - p.f_Quantity * p.m_Price * p.f_Discount / 100 AS ProTotal, pro.s_Name AS ProductName, pro.s_Product_ID AS ProductID, 
                      p.m_Price / p.f_Convert AS OriginalPrice, p.s_Store_ID, p.dt_OverDate
FROM         dbo.PR_PurchaseImportDetails AS p INNER JOIN
                      dbo.LS_Products AS pro ON p.s_Product_ID = pro.s_ID LEFT OUTER JOIN
                      dbo.PR_Product_Units AS proUnit ON p.s_Unit = proUnit.s_ID LEFT OUTER JOIN
                      dbo.LS_Products AS lsPro ON p.s_Product_ID = lsPro.s_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[6] 2[20] 3) )"
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
         Begin Table = "proUnit"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 352
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pro"
            Begin Extent = 
               Top = 6
               Left = 249
               Bottom = 120
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lsPro"
            Begin Extent = 
               Top = 126
               Left = 262
               Bottom = 404
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 305
               Right = 211
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_PurchaseImportDetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_PurchaseImportDetails';

