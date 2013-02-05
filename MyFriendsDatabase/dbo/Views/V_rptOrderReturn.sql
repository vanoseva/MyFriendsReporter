CREATE VIEW [dbo].[V_rptOrderReturn]
AS
SELECT     dbo.V_OrderReturns.s_ID, dbo.V_OrderReturns.s_Order_ID, dbo.V_OrderReturns.m_Ordertotal, dbo.V_OrderReturns.s_Note, 
                      dbo.V_OrderReturns.i_VAT, dbo.V_OrderReturns.f_Discount, dbo.V_OrderReturns.f_Per, dbo.V_OrderReturns.i_IDSort, dbo.V_OrderReturns.s_Word, 
                      dbo.V_OrderReturns.s_GroupProduct, dbo.V_OrderReturns.s_FullOrderDate, dbo.V_OrderReturns.s_SymbolInvoice, dbo.V_OrderReturns.s_Invoice, 
                      dbo.V_OrderReturns.m_Exchange, dbo.V_OrderReturns.StoreName, dbo.V_OrderReturns.EmpName, dbo.V_OrderReturns.ObjName, 
                      dbo.V_OrderReturns.dt_OrderDate, dbo.V_OrderReturns.s_Store_ID, dbo.V_OrderReturns.s_Address, dbo.V_OrderReturns.s_Phone1, 
                      dbo.V_OrderReturns.Expr1 AS AddressObject, dbo.LS_Products.s_Product_ID, dbo.LS_Products.s_Name, dbo.PR_OrderDetailReturns.f_Quantity, 
                      dbo.PR_OrderDetailReturns.m_Price, dbo.PR_OrderDetailReturns.s_Unit, 
                      dbo.PR_OrderDetailReturns.f_Quantity * (dbo.PR_OrderDetailReturns.m_Price - dbo.PR_OrderDetailReturns.m_Price * dbo.PR_OrderDetailReturns.f_Discount
                       / 100) AS m_Total, dbo.V_OrderReturns.s_TaxNo
FROM         dbo.LS_Products RIGHT OUTER JOIN
                      dbo.PR_OrderDetailReturns ON dbo.LS_Products.s_ID = dbo.PR_OrderDetailReturns.s_Product_ID FULL OUTER JOIN
                      dbo.V_OrderReturns ON dbo.PR_OrderDetailReturns.s_Order_ID = dbo.V_OrderReturns.s_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[8] 2[26] 3) )"
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
         Begin Table = "PR_OrderDetailReturns"
            Begin Extent = 
               Top = 0
               Left = 586
               Bottom = 291
               Right = 738
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Products"
            Begin Extent = 
               Top = 80
               Left = 279
               Bottom = 305
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V_OrderReturns"
            Begin Extent = 
               Top = 0
               Left = 88
               Bottom = 280
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 8
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 30
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
         Table = 1170', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptOrderReturn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'Output = 720
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptOrderReturn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptOrderReturn';

