CREATE VIEW [dbo].[V_Order_Other]  
AS  
SELECT     dbo.Ls_Order_Other.s_ID, dbo.Ls_Order_Other.s_Order_ID, dbo.Ls_Order_Other.s_Char, dbo.Ls_Order_Other.i_ItemID,   
                      dbo.Ls_Order_Other.dt_OrderDate, dbo.Ls_Order_Other.s_EmployeeID, dbo.Ls_Order_Other.s_ObjectID, dbo.Ls_Order_Other.m_Ordertotal,   
                      dbo.Ls_Order_Other.s_Note, dbo.Ls_Order_Other.i_IDSort, dbo.Ls_Order_Other.s_Word, dbo.Ls_Order_Other.s_Invoice,   
                      dbo.Ls_Order_Other.s_Creator, dbo.Ls_Order_Other.s_Editor, dbo.Ls_Order_Other.dt_Create, dbo.Ls_Order_Other.dt_Edit,   
                      dbo.LS_Objects.s_Object_ID, dbo.LS_Objects.s_Name, dbo.LS_Employees.s_Name AS NameEmployees,   
                      dbo.Ls_PaymentOrder.s_Name AS NamePayment,dbo.Ls_Order_Other.s_ResOrderID  
FROM         dbo.Ls_Order_Other LEFT OUTER JOIN  
                      dbo.LS_Employees ON dbo.Ls_Order_Other.s_EmployeeID = dbo.LS_Employees.s_ID LEFT OUTER JOIN  
                      dbo.LS_Objects ON dbo.Ls_Order_Other.s_ObjectID = dbo.LS_Objects.s_ID LEFT OUTER JOIN  
                      dbo.Ls_PaymentOrder ON dbo.Ls_Order_Other.i_ItemID = dbo.Ls_PaymentOrder.i_ID
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
         Begin Table = "Ls_Order_Other"
            Begin Extent = 
               Top = 4
               Left = 31
               Bottom = 283
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Employees"
            Begin Extent = 
               Top = 103
               Left = 622
               Bottom = 218
               Right = 780
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 11
               Left = 354
               Bottom = 126
               Right = 524
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_PaymentOrder"
            Begin Extent = 
               Top = 163
               Left = 345
               Bottom = 278
               Right = 497
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Order_Other';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Order_Other';

