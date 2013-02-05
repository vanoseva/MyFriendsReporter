CREATE VIEW [dbo].[V_rptImportOther]  
AS  
SELECT     V_Import_Other.s_ID,dbo.V_Import_Other.s_Import_ID, dbo.V_Import_Other.dt_ImportDate, dbo.V_Import_Other.m_ImportTotal, dbo.V_Import_Other.s_Note,   
                      dbo.V_Import_Other.s_Word, dbo.V_Import_Other.s_Name, dbo.V_Import_Other.NameStore, dbo.V_Import_Other.NameObject,   
                      dbo.V_Import_Other.NameEmployee, dbo.V_Import_Other.IDKH_s, dbo.V_Import_Other.NamePayment, dbo.v_ImportDetail_Other.Product_IDchar,   
                      dbo.v_ImportDetail_Other.Product_Name, dbo.v_ImportDetail_Other.f_Quantity, dbo.v_ImportDetail_Other.m_Price, dbo.v_ImportDetail_Other.s_Unit,   
                      dbo.v_ImportDetail_Other.m_Total, dbo.V_Import_Other.s_Address, dbo.V_Import_Other.s_Phone1  
FROM         dbo.V_Import_Other FULL OUTER JOIN  
                      dbo.v_ImportDetail_Other ON dbo.V_Import_Other.s_ID = dbo.v_ImportDetail_Other.s_Import_ID  
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
         Begin Table = "v_ImportDetail_Other"
            Begin Extent = 
               Top = 15
               Left = 421
               Bottom = 301
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "V_Import_Other"
            Begin Extent = 
               Top = 27
               Left = 131
               Bottom = 296
               Right = 348
            End
            DisplayFlags = 280
            TopColumn = 11
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 2700
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptImportOther';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptImportOther';

