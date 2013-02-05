CREATE VIEW [dbo].[V_rptPurchaseImport]
AS
SELECT     dbo.LS_PurchaseImports.s_Order_ID, dbo.LS_PurchaseImports.dt_CreateDate, dbo.LS_PurchaseImports.s_ID, 
                      dbo.V_PurchaseImportDetails.s_OrderID, dbo.V_PurchaseImportDetails.s_Product_ID, dbo.V_PurchaseImportDetails.f_Quantity, 
                      dbo.V_PurchaseImportDetails.m_Price, dbo.V_PurchaseImportDetails.f_Discount, dbo.V_PurchaseImportDetails.m_Discount, 
                      dbo.V_PurchaseImportDetails.s_Note, dbo.V_PurchaseImportDetails.f_Tax, dbo.V_PurchaseImportDetails.s_Unit, 
                      dbo.V_PurchaseImportDetails.ProTotal, dbo.V_PurchaseImportDetails.ProductName, dbo.V_PurchaseImportDetails.ProductID, 
                      dbo.V_PurchaseImportDetails.OriginalPrice, dbo.V_PurchaseImportDetails.s_Store_ID, dbo.V_PurchaseImportDetails.dt_OverDate, 
                      dbo.V_PurchaseImportDetails.s_ID AS Expr1, dbo.V_PurchaseImportDetails.f_Convert, dbo.V_PurchaseImportDetails.f_QuantityReceive, 
                      dbo.V_PurchaseImportDetails.i_IDSort, dbo.LS_Objects.s_Name, DATEADD(day, dbo.LS_PaymentTerm.i_DayNum, 
                      dbo.LS_PurchaseImports.dt_CreateDate) AS PaymentTerm, dbo.LS_Objects.s_Address, dbo.LS_Objects.s_Phone1, dbo.LS_Objects.s_TaxNo, 
                      dbo.LS_PurchaseImports.m_VAT, dbo.LS_PurchaseImports.m_Ordertotal, dbo.LS_PurchaseImports.s_Word, 
                      dbo.LS_PurchaseImports.m_Expense
FROM         dbo.LS_PurchaseImports LEFT OUTER JOIN
                      dbo.LS_PaymentTerm ON dbo.LS_PurchaseImports.PaymentTermID = dbo.LS_PaymentTerm.s_ID LEFT OUTER JOIN
                      dbo.LS_Objects ON dbo.LS_PurchaseImports.s_Object_ID = dbo.LS_Objects.s_ID LEFT OUTER JOIN
                      dbo.V_PurchaseImportDetails ON dbo.LS_PurchaseImports.s_ID = dbo.V_PurchaseImportDetails.s_OrderID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[10] 2[10] 3) )"
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
         Begin Table = "LS_PurchaseImports"
            Begin Extent = 
               Top = 14
               Left = 38
               Bottom = 305
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "LS_PaymentTerm"
            Begin Extent = 
               Top = 203
               Left = 356
               Bottom = 382
               Right = 668
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 106
               Left = 401
               Bottom = 280
               Right = 571
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "V_PurchaseImportDetails"
            Begin Extent = 
               Top = 0
               Left = 693
               Bottom = 372
               Right = 1056
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 32
         Width = 284
         Width = 2550
         Width = 3990
         Width = 5340
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
         Width = 1500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptPurchaseImport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'Width = 1500
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptPurchaseImport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptPurchaseImport';

