CREATE VIEW [dbo].[V_OrderReturns]
AS
SELECT     dbo.LS_OrderReturns.s_ID, dbo.LS_OrderReturns.s_Order_ID, dbo.LS_OrderReturns.m_Ordertotal, dbo.LS_OrderReturns.s_Note, 
                      dbo.LS_OrderReturns.i_VAT, dbo.LS_OrderReturns.f_Discount, dbo.LS_OrderReturns.f_Per, dbo.LS_OrderReturns.i_IDSort, 
                      dbo.LS_OrderReturns.s_Word, dbo.LS_OrderReturns.s_GroupProduct, dbo.LS_OrderReturns.s_FullOrderDate, dbo.LS_OrderReturns.s_SymbolInvoice, 
                      dbo.LS_OrderReturns.s_Invoice, dbo.LS_OrderReturns.m_Exchange, dbo.LS_Stores.s_Name AS StoreName, 
                      dbo.LS_Employees.s_Name AS EmpName, dbo.LS_Objects.s_Name AS ObjName, dbo.LS_OrderReturns.dt_OrderDate, 
                      dbo.LS_OrderReturns.s_Store_ID, dbo.LS_Stores.s_Address, dbo.LS_Objects.s_Address AS Expr1, dbo.LS_Objects.s_Phone1, 
                      dbo.LS_Objects.s_TaxNo
FROM         dbo.LS_OrderReturns LEFT OUTER JOIN
                      dbo.LS_Objects ON dbo.LS_OrderReturns.s_Object_ID = dbo.LS_Objects.s_ID LEFT OUTER JOIN
                      dbo.LS_Stores ON dbo.LS_OrderReturns.s_Store_ID = dbo.LS_Stores.s_ID LEFT OUTER JOIN
                      dbo.LS_Employees ON dbo.LS_OrderReturns.s_EmployeeID = dbo.LS_Employees.s_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[13] 2[20] 3) )"
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
         Begin Table = "LS_OrderReturns"
            Begin Extent = 
               Top = 22
               Left = 37
               Bottom = 259
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 8
               Left = 566
               Bottom = 363
               Right = 738
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Stores"
            Begin Extent = 
               Top = 190
               Left = 346
               Bottom = 360
               Right = 533
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Employees"
            Begin Extent = 
               Top = 134
               Left = 744
               Bottom = 316
               Right = 941
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
         Or =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderReturns';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'1350
      End
   End
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderReturns';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderReturns';

