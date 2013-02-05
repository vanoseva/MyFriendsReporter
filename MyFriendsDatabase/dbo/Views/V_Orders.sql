CREATE VIEW [dbo].[V_Orders]  
AS  
SELECT     dbo.LS_Employees.s_Name AS EmployeeName, dbo.LS_Objects.s_Name AS ObjectName, dbo.LS_Contacts.s_Name AS ContactName,   
                      dbo.Ls_Quote.s_Order_ID AS QuoteID, dbo.LS_PurchaseOrders.s_Order_ID AS PurchaseID, dbo.LS_PaymentTerm.s_Name AS TermName,   
                      dbo.V_FullOrder.s_ID, dbo.V_FullOrder.s_Order_ID, dbo.V_FullOrder.s_Char, dbo.V_FullOrder.i_ItemID, dbo.V_FullOrder.dt_OrderDate,   
                      dbo.V_FullOrder.s_EmployeeID, dbo.V_FullOrder.s_ObjectID, dbo.V_FullOrder.s_DeliverableAddresss, dbo.V_FullOrder.s_PayabbleAddress,   
                      dbo.V_FullOrder.s_ContactID, dbo.V_FullOrder.m_Ordertotal, dbo.V_FullOrder.s_Note, dbo.V_FullOrder.f_VAT, dbo.V_FullOrder.m_VAT,   
                      dbo.V_FullOrder.f_Discount, dbo.V_FullOrder.m_OrderTotalDiscount, dbo.V_FullOrder.f_Per, dbo.V_FullOrder.m_Per, dbo.V_FullOrder.i_IDSort,   
                      dbo.V_FullOrder.s_Word, dbo.V_FullOrder.s_GroupProduct, dbo.V_FullOrder.s_FullOrderDate, dbo.V_FullOrder.s_SymbolInvoice,   
                      dbo.V_FullOrder.s_Invoice, dbo.V_FullOrder.m_Exchange, dbo.V_FullOrder.s_PurchaseID, dbo.V_FullOrder.s_Quote_ID, dbo.V_FullOrder.b_isDiscount,   
                      dbo.V_FullOrder.b_isDiscountProduct, dbo.V_FullOrder.i_TermID, dbo.V_FullOrder.s_Creator, dbo.V_FullOrder.s_Editor, dbo.V_FullOrder.dt_Create,   
                      dbo.V_FullOrder.dt_Edit, dbo.V_FullOrder.f_Commission, dbo.V_FullOrder.m_Commission, dbo.V_FullOrder.b_isDept, dbo.V_FullOrder.b_isCash, dbo.V_FullOrder.b_isCashAll,   
                      dbo.V_FullOrder.b_isCashPart, dbo.V_FullOrder.b_isCashPrepay, dbo.V_FullOrder.m_Cash  
FROM         dbo.V_FullOrder LEFT OUTER JOIN  
                      dbo.LS_PaymentTerm ON dbo.V_FullOrder.i_TermID = dbo.LS_PaymentTerm.s_ID LEFT OUTER JOIN  
                      dbo.LS_PurchaseOrders ON dbo.V_FullOrder.s_PurchaseID = dbo.LS_PurchaseOrders.s_ID LEFT OUTER JOIN  
                      dbo.Ls_Quote ON dbo.V_FullOrder.s_Quote_ID = dbo.Ls_Quote.s_ID LEFT OUTER JOIN  
                      dbo.LS_Contacts ON dbo.V_FullOrder.s_ContactID = dbo.LS_Contacts.s_ID LEFT OUTER JOIN  
                      dbo.LS_Objects ON dbo.V_FullOrder.s_ObjectID = dbo.LS_Objects.s_ID LEFT OUTER JOIN  
                      dbo.LS_Employees ON dbo.V_FullOrder.s_EmployeeID = dbo.LS_Employees.s_ID   
  
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[15] 2[31] 3) )"
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
         Begin Table = "V_FullOrder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_PaymentTerm"
            Begin Extent = 
               Top = 173
               Left = 597
               Bottom = 288
               Right = 789
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_PurchaseOrders"
            Begin Extent = 
               Top = 214
               Left = 329
               Bottom = 329
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_Quote"
            Begin Extent = 
               Top = 82
               Left = 789
               Bottom = 197
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Contacts"
            Begin Extent = 
               Top = 198
               Left = 85
               Bottom = 313
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 0
               Left = 567
               Bottom = 115
               Right = 737
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Employees"
            Begin Extent = 
               Top = 0
               Left = 404
               Bottom = 115
               Right = 559
            End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Orders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'DisplayFlags = 280
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
         Alias = 1290
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Orders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Orders';

