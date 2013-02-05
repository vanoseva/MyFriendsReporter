CREATE VIEW [dbo].[V_HisIncom2]
AS
SELECT     dbo.LS_Orders.s_ID, dbo.LS_Orders.s_Order_ID, dbo.LS_Orders.s_Char, dbo.LS_Orders.i_ItemID, dbo.LS_Orders.dt_OrderDate, 
                      dbo.LS_Orders.s_EmployeeID, dbo.LS_Orders.s_ObjectID, dbo.LS_Orders.s_DeliverableAddresss, dbo.LS_Orders.s_PayabbleAddress, 
                      dbo.LS_Orders.s_ContactID, dbo.LS_Orders.m_Ordertotal, dbo.LS_Orders.s_Note, dbo.LS_Orders.f_VAT, dbo.LS_Orders.m_VAT, 
                      dbo.LS_Orders.f_Discount, dbo.LS_Orders.m_OrderTotalDiscount, dbo.LS_Orders.f_Per, dbo.LS_Orders.m_Per, dbo.LS_Orders.i_IDSort, 
                      dbo.LS_Orders.s_Word, dbo.LS_Orders.s_GroupProduct, dbo.LS_Orders.s_FullOrderDate, dbo.LS_Orders.s_SymbolInvoice, dbo.LS_Orders.s_Invoice, 
                      dbo.LS_Orders.m_Exchange, dbo.LS_Orders.s_PurchaseID, dbo.LS_Orders.s_Quote_ID, dbo.LS_Orders.b_isDiscount, 
                      dbo.LS_Orders.b_isDiscountProduct, dbo.LS_Orders.i_TermID, dbo.LS_Orders.s_Creator, dbo.LS_Orders.s_Editor, dbo.LS_Orders.dt_Create, 
                      dbo.LS_Orders.dt_Edit, dbo.LS_Orders.f_Commission, dbo.LS_Orders.m_Commission, dbo.LS_Orders.b_isDept, dbo.LS_Orders.b_isCash, 
                      dbo.LS_Orders.b_isCashAll, dbo.LS_Orders.b_isCashPart, dbo.LS_Orders.b_isCashPrepay, dbo.LS_Orders.m_Cash, dbo.V_HisIncom1.Tong
FROM         dbo.LS_Orders RIGHT OUTER JOIN
                      dbo.V_HisIncom1 ON dbo.LS_Orders.s_ID = dbo.V_HisIncom1.s_NumberID
WHERE     (dbo.LS_Orders.m_Cash > dbo.V_HisIncom1.Tong)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Top = -148
         Left = 0
      End
      Begin Tables = 
         Begin Table = "LS_Orders"
            Begin Extent = 
               Top = 189
               Left = 38
               Bottom = 304
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V_HisIncom1"
            Begin Extent = 
               Top = 189
               Left = 265
               Bottom = 274
               Right = 417
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_HisIncom2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_HisIncom2';

