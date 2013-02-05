CREATE VIEW [dbo].[V_ImportReturns]
AS
SELECT     dbo.Ls_ImportReturns.s_ID, dbo.Ls_ImportReturns.s_Import_ID, dbo.Ls_ImportReturns.i_ItemID, dbo.Ls_ImportReturns.dt_ImportDate, 
                      dbo.Ls_ImportReturns.s_Object_ID, dbo.Ls_ImportReturns.s_Contact_ID, dbo.Ls_ImportReturns.s_EmployeeID, dbo.Ls_ImportReturns.f_VAT, 
                      dbo.Ls_ImportReturns.f_Discount, dbo.Ls_ImportReturns.m_ImportTotal, dbo.Ls_ImportReturns.s_Store_ID, dbo.Ls_ImportReturns.s_Note, 
                      dbo.Ls_ImportReturns.s_InfoProduct, dbo.Ls_ImportReturns.s_SymbolInvoice, dbo.Ls_ImportReturns.s_Invoice, dbo.Ls_ImportReturns.s_Word, 
                      dbo.Ls_ImportReturns.i_IDSort, dbo.Ls_ImportReturns.m_Cost, dbo.Ls_ImportReturns.m_Exchange, dbo.Ls_ImportReturns.s_Name, 
                      dbo.Ls_ImportReturns.OrderID, dbo.LS_Stores.s_Name AS StoreName, dbo.LS_Objects.s_Name AS ObjectName, 
                      dbo.LS_Employees.s_Name AS EmpName, dbo.LS_Contacts.s_Name AS ContactName
FROM         dbo.Ls_ImportReturns LEFT OUTER JOIN
                      dbo.LS_Contacts ON dbo.Ls_ImportReturns.s_Contact_ID = dbo.LS_Contacts.s_ID LEFT OUTER JOIN
                      dbo.LS_Employees ON dbo.LS_Employees.s_ID = dbo.Ls_ImportReturns.s_EmployeeID LEFT OUTER JOIN
                      dbo.LS_Objects ON dbo.Ls_ImportReturns.s_Object_ID = dbo.LS_Objects.s_ID LEFT OUTER JOIN
                      dbo.LS_Stores ON dbo.Ls_ImportReturns.s_Store_ID = dbo.LS_Stores.s_ID

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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ls_ImportReturns"
            Begin Extent = 
               Top = 26
               Left = 16
               Bottom = 301
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Employees"
            Begin Extent = 
               Top = 0
               Left = 377
               Bottom = 175
               Right = 534
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 3
               Left = 591
               Bottom = 160
               Right = 763
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "LS_Stores"
            Begin Extent = 
               Top = 184
               Left = 378
               Bottom = 299
               Right = 603
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Contacts"
            Begin Extent = 
               Top = 158
               Left = 678
               Bottom = 273
               Right = 848
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
         Or =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_ImportReturns';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'1350
         Or = 1350
      End
   End
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_ImportReturns';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_ImportReturns';

