CREATE VIEW V_FullObjects                             
AS                 
SELECT Cast(0 as money) as InDebt,Cast(0 as money) as OutDebt,   
  d.s_Name AS DistrictName, p.s_Name AS ProvinceName, n.s_Name AS NationName,  
  og.s_Name AS GroupName,o.*,e.s_Name as EmpName, n2.s_Name as CountryName,  
  cast(ltrim(rtrim(str(year(o.dtFrom)))) + '-' + ltrim(rtrim(str(month(dtFrom)))) + '-' +  
  ltrim(rtrim(str(day(dtFrom)))) as smalldatetime) as dtFromDay,  
  ltrim(rtrim(datepart(hour,o.dtFrom))) + ':' + ltrim(rtrim(str(datepart(minute, o.dtFrom)))) as dtFromTime,  
  cast(ltrim(rtrim(str(year(o.dtTo)))) + '-' + ltrim(rtrim(str(month(dtTo)))) + '-' +  
  ltrim(rtrim(str(day(dtTo)))) as smalldatetime) as dtToDay,  
  ltrim(rtrim(str(datepart(hour,o.dtTo)))) + ':' + ltrim(rtrim(str(datepart(minute, o.dtTo)))) as dtToTime,  
 lsbg.s_Name as GateName, lsm.s_Name as MarkName  
             
FROM  dbo.LS_ObjectGroups  og RIGHT OUTER JOIN  
 dbo.LS_Objects o ON og.s_ID = o.s_ObjectGroup_ID LEFT OUTER JOIN  
    dbo.LS_Provinces p INNER JOIN  
    dbo.LS_Districts d ON p.s_ID = d.s_Province_ID INNER JOIN    
    dbo.LS_Nationalities n ON p.s_Nation_ID = n.s_ID ON o.s_District_ID = d.s_ID   LEFT OUTER JOIN   
    dbo.LS_Employees e ON o.s_Employee_ID=e.s_ID left outer join   
    dbo.LS_Nationalities n2 ON o.Nation_ID = n2.s_ID left outer join  
 LS_BorderGate lsbg on o.BorderGate_ID=lsbg.i_ID left outer join  
 LS_mark lsm on o.Mark_ID=lsm.i_ID
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
         Begin Table = "LS_Provinces"
            Begin Extent = 
               Top = 117
               Left = 521
               Bottom = 262
               Right = 673
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Districts"
            Begin Extent = 
               Top = 9
               Left = 380
               Bottom = 124
               Right = 532
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "LS_Nationalities"
            Begin Extent = 
               Top = 14
               Left = 768
               Bottom = 129
               Right = 920
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 4
               Left = 109
               Bottom = 119
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_ObjectGroups"
            Begin Extent = 
               Top = 185
               Left = 0
               Bottom = 300
               Right = 170
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
      Begin ColumnWidths = 28
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
         Width = 1500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_FullObjects';


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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_FullObjects';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_FullObjects';

