CREATE VIEW dbo.V_FullContacts      
AS      
SELECT     dbo.LS_ContactType.s_Name AS TypeName, dbo.LS_Position.s_Name AS PositionName, dbo.LS_Department.s_Name AS DepartmentName,       
                      dbo.LS_Districts.s_Name AS DistrictName, dbo.LS_Provinces.s_Name AS ProvinceName, dbo.LS_Nationalities.s_Name AS NationName,       
                      dbo.LS_Contacts.s_ID, dbo.LS_Contacts.s_Contact_ID, dbo.LS_Contacts.s_Name, dbo.LS_Contacts.i_Position_ID, dbo.LS_Contacts.i_Department_ID,       
                      dbo.LS_Contacts.i_ContactType_ID, dbo.LS_Contacts.s_Address, dbo.LS_Contacts.s_DistrictID, dbo.LS_Contacts.s_Phone1,       
                      dbo.LS_Contacts.s_Phone2, dbo.LS_Contacts.s_Fax, dbo.LS_Contacts.s_Email, dbo.LS_Contacts.s_Note, dbo.LS_Contacts.i_Ordinal,     
   isnull(pr.s_Object_ID,'') as s_Object_ID      
FROM         dbo.LS_ContactType RIGHT OUTER JOIN      
                      dbo.LS_Contacts ON dbo.LS_ContactType.i_ID = dbo.LS_Contacts.i_ContactType_ID LEFT OUTER JOIN      
                      dbo.LS_Department ON dbo.LS_Contacts.i_Department_ID = dbo.LS_Department.i_ID LEFT OUTER JOIN      
                      dbo.LS_Position ON dbo.LS_Contacts.i_Position_ID = dbo.LS_Position.i_ID LEFT OUTER JOIN      
                      dbo.LS_Provinces INNER JOIN      
                      dbo.LS_Districts ON dbo.LS_Provinces.s_ID = dbo.LS_Districts.s_Province_ID INNER JOIN      
                      dbo.LS_Nationalities ON dbo.LS_Provinces.s_Nation_ID = dbo.LS_Nationalities.s_ID ON dbo.LS_Contacts.s_DistrictID = dbo.LS_Districts.s_ID      
  left outer join pr_object_contact pr on dbo.LS_Contacts.s_ID=pr.s_Contact_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[15] 4[58] 2[4] 3) )"
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
         Begin Table = "LS_ContactType"
            Begin Extent = 
               Top = 207
               Left = 17
               Bottom = 307
               Right = 169
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Contacts"
            Begin Extent = 
               Top = 0
               Left = 32
               Bottom = 115
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Department"
            Begin Extent = 
               Top = 198
               Left = 279
               Bottom = 298
               Right = 431
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Position"
            Begin Extent = 
               Top = 178
               Left = 514
               Bottom = 278
               Right = 666
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Provinces"
            Begin Extent = 
               Top = 0
               Left = 581
               Bottom = 143
               Right = 733
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Districts"
            Begin Extent = 
               Top = 2
               Left = 339
               Bottom = 117
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Nationalities"
            Begin Extent = 
               Top = 144
               Left = 801
               Bottom = 259
               Right = 953', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_FullContacts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'End
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
      Begin ColumnWidths = 21
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2730
         Alias = 1545
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_FullContacts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_FullContacts';

