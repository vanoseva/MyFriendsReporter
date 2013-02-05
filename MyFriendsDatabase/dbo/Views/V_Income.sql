CREATE  VIEW dbo.V_Income              
AS            
select isnull(lso.s_name,e.s_Name) as ObjectName, ISNULL(lsb.s_Name, N'') AS BankName,isnull(lso.s_Object_ID,'') as ObjectID,         
 CASE WHEN ls.i_PaymentDebt = 0 THEN N'Thu tiền trực tiếp'           
  WHEN ls.i_PaymentDebt = 1 THEN N'Thu từ tiền gối đầu'           
  ELSE N'Thu vào tiền gối đầu' END AS phuongthucCN,            
 ISNULL(lsoi.s_Name, lsoii.s_Name) AS OtherIncomeName,               
 ls.*           
from ls_income ls left outer join ls_objects lso on ls.s_object_id=lso.s_id          
 left outer join dbo.LS_Banks AS lsb ON ls.s_Bank_ID = lsb.s_ID            
 left outer join   dbo.LS_OtherIncome AS lsoi ON ls.i_Item_ID = lsoi.i_ID      
 left outer join   dbo.LS_OtherIncome AS lsoii ON ls.i_GroupItem_ID = lsoii.i_ID     
left outer join ls_employees e on ls.s_Object_ID=e.s_id
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[21] 3) )"
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
         Begin Table = "ls"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 150
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "V_FullOrder"
            Begin Extent = 
               Top = 190
               Left = 314
               Bottom = 305
               Right = 503
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Income"
            Begin Extent = 
               Top = 124
               Left = 431
               Bottom = 239
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lso"
            Begin Extent = 
               Top = 0
               Left = 787
               Bottom = 115
               Right = 957
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "lsoi"
            Begin Extent = 
               Top = 0
               Left = 246
               Bottom = 100
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lsb"
            Begin Extent = 
               Top = 39
               Left = 614
               Bottom = 154
               Right = 766
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
      Begin ColumnWidths = 32
         Width = 284
         Width = 1500
         Width = 1500
         Width =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Income';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'1500
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
         Alias = 1455
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Income';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Income';

