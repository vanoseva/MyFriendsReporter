CREATE view [dbo].[V_PurchaseOrders]
as
	SELECT     dbo.LS_Objects.s_Name AS ObjectName, dbo.LS_Contacts.s_Name AS ContactName, dbo.Ls_Quote.s_Order_ID AS QuoteID, 
                      dbo.LS_Employees.s_Name AS EmployeeName, dbo.LS_PaymentTerm.s_Name AS TermName, dbo.LS_PurchaseOrders.s_ID, 
                      dbo.LS_PurchaseOrders.s_Order_ID, dbo.LS_PurchaseOrders.s_Char, dbo.LS_PurchaseOrders.i_ItemID, dbo.LS_PurchaseOrders.dt_OrderDate, 
                      dbo.LS_PurchaseOrders.s_EmployeeID, dbo.LS_PurchaseOrders.s_Object_ID, dbo.LS_PurchaseOrders.s_DeliverableAddress, 
                      dbo.LS_PurchaseOrders.s_PayableAddress, dbo.LS_PurchaseOrders.s_ContactID, dbo.LS_PurchaseOrders.m_Ordertotal, 
                      dbo.LS_PurchaseOrders.s_Note, dbo.LS_PurchaseOrders.f_VAT, dbo.LS_PurchaseOrders.m_VAT, dbo.LS_PurchaseOrders.m_OrderTotalDiscount, 
                      dbo.LS_PurchaseOrders.m_per, dbo.LS_PurchaseOrders.f_Per, dbo.LS_PurchaseOrders.i_IDSort, dbo.LS_PurchaseOrders.s_Word, 
                      dbo.LS_PurchaseOrders.s_GroupProduct, dbo.LS_PurchaseOrders.s_FullOrderDate, dbo.LS_PurchaseOrders.s_SymbolInvoice, 
                      dbo.LS_PurchaseOrders.s_Invoice, dbo.LS_PurchaseOrders.m_Exchange, dbo.LS_PurchaseOrders.b_isFinish, dbo.LS_PurchaseOrders.s_Quote_ID, 
                      dbo.LS_PurchaseOrders.b_isPartially, dbo.LS_PurchaseOrders.b_isEnough, dbo.LS_PurchaseOrders.b_isOver, dbo.LS_PurchaseOrders.s_State, 
                      dbo.LS_PurchaseOrders.d_EndDate, dbo.LS_PurchaseOrders.s_DiscountDetail_ID, dbo.LS_PurchaseOrders.b_isDiscountProduct, 
                      dbo.LS_PurchaseOrders.i_TermID, dbo.LS_PurchaseOrders.s_Creator, dbo.LS_PurchaseOrders.s_Editor, dbo.LS_PurchaseOrders.dt_Create, 
                      dbo.LS_PurchaseOrders.dt_Edit
	FROM         dbo.LS_Contacts RIGHT OUTER JOIN
                      dbo.LS_PurchaseOrders LEFT OUTER JOIN
                      dbo.LS_PaymentTerm ON dbo.LS_PurchaseOrders.i_TermID = dbo.LS_PaymentTerm.s_ID LEFT OUTER JOIN
                      dbo.LS_Employees ON dbo.LS_PurchaseOrders.s_EmployeeID = dbo.LS_Employees.s_ID LEFT OUTER JOIN
                      dbo.Ls_Quote ON dbo.LS_PurchaseOrders.s_Quote_ID = dbo.Ls_Quote.s_ID ON 
                      dbo.LS_Contacts.s_ID = dbo.LS_PurchaseOrders.s_ContactID LEFT OUTER JOIN
                      dbo.LS_Objects ON dbo.LS_PurchaseOrders.s_Object_ID = dbo.LS_Objects.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[10] 2[35] 3) )"
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
         Begin Table = "LS_Contacts"
            Begin Extent = 
               Top = 120
               Left = 699
               Bottom = 235
               Right = 867
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_PurchaseOrders"
            Begin Extent = 
               Top = 6
               Left = 7
               Bottom = 257
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_PaymentTerm"
            Begin Extent = 
               Top = 0
               Left = 762
               Bottom = 115
               Right = 914
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Employees"
            Begin Extent = 
               Top = 0
               Left = 274
               Bottom = 115
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_Quote"
            Begin Extent = 
               Top = 191
               Left = 520
               Bottom = 306
               Right = 675
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 46
               Left = 525
               Bottom = 161
               Right = 695
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
      Begin ColumnWidths = 39
         Width = 284
         Width = 1500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_PurchaseOrders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'Width = 1500
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
         Alias = 2100
         Table = 2490
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_PurchaseOrders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_PurchaseOrders';

