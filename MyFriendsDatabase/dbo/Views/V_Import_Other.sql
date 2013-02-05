CREATE VIEW [dbo].[V_Import_Other]    
AS    
SELECT     dbo.Ls_Import_Other.s_ID, dbo.Ls_Import_Other.s_Import_ID, dbo.Ls_Import_Other.i_Item_ID, dbo.Ls_Import_Other.dt_ImportDate,     
                      dbo.Ls_Import_Other.s_Object_ID, dbo.Ls_Import_Other.s_EmployeeID, dbo.Ls_Import_Other.m_ImportTotal, dbo.Ls_Import_Other.s_Store_ID,     
                      dbo.Ls_Import_Other.s_Note, dbo.Ls_Import_Other.s_Invoice, dbo.Ls_Import_Other.s_Word, dbo.Ls_Import_Other.i_IDSort,     
                      dbo.Ls_Import_Other.s_Name, dbo.Ls_Import_Other.dt_Create, dbo.Ls_Import_Other.dt_LastUpdate, dbo.Ls_Import_Other.s_UserCreate,     
                      dbo.Ls_Import_Other.s_UserEdit, dbo.Ls_Import_Other.s_Char, dbo.LS_Stores.s_Name AS NameStore, dbo.LS_Objects.s_Name AS NameObject,     
                      dbo.Ls_PaymentImport.s_Name AS NamePayment, dbo.LS_Employees.s_Name AS NameEmployee, dbo.Ls_PaymentImport.IDKH_s,     
                      dbo.LS_Objects.s_Address, dbo.LS_Objects.s_Phone1,ISNULL( dbo.Ls_Import_Other.Curr, N'VND') AS Curr  
    
FROM         dbo.Ls_Import_Other LEFT OUTER JOIN    
                      dbo.Ls_PaymentImport ON dbo.Ls_Import_Other.i_Item_ID = dbo.Ls_PaymentImport.i_ID LEFT OUTER JOIN    
                      dbo.LS_Objects ON dbo.Ls_Import_Other.s_Object_ID = dbo.LS_Objects.s_ID LEFT OUTER JOIN    
                      dbo.LS_Employees ON dbo.Ls_Import_Other.s_EmployeeID = dbo.LS_Employees.s_ID LEFT OUTER JOIN    
                      dbo.LS_Stores ON dbo.Ls_Import_Other.s_Store_ID = dbo.LS_Stores.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[68] 4[4] 2[9] 3) )"
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
         Begin Table = "Ls_Import_Other"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 282
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_PaymentImport"
            Begin Extent = 
               Top = 150
               Left = 580
               Bottom = 265
               Right = 814
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 202
               Left = 315
               Bottom = 474
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Employees"
            Begin Extent = 
               Top = 50
               Left = 758
               Bottom = 165
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Stores"
            Begin Extent = 
               Top = 0
               Left = 319
               Bottom = 115
               Right = 471
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
         Column = 1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Import_Other';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'Alias = 900
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Import_Other';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Import_Other';

