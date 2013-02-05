﻿CREATE VIEW dbo.V_Booking  
AS  
SELECT   dbo.PR_Booking.Number_ID, CASE WHEN datediff(day, from_date, to_Date) > 0 THEN dateadd(day, - 1, to_Date) ELSE to_Date END AS toDate, dbo.PR_Booking.s_ID,   
                      dbo.PR_Booking.BK_Date, dbo.PR_Booking.FullName, dbo.PR_Booking.Contact, dbo.PR_Booking.Company, dbo.PR_Booking.Address,   
                      dbo.PR_Booking.PhoneOffice, dbo.PR_Booking.HomePhone, dbo.PR_Booking.From_date, dbo.PR_Booking.To_date, dbo.PR_Booking.Note,   
                      dbo.PR_Booking.isArrange, dbo.PR_Booking.isReg, dbo.PR_Booking.Payment, dbo.PR_Booking.CaLV, dbo.PR_Booking.Nguoidat,   
                      dbo.PR_Booking.Dienthoai, dbo.PR_Booking.Fax, dbo.PR_Booking.DatCoc, dbo.PR_Booking.Partner_ID, dbo.PR_Booking.UCreate,   
                      dbo.PR_Booking.dtCreate, dbo.PR_Booking.UEdit, dbo.PR_Booking.dtEdit, dbo.PR_Booking.IDSort, dbo.PR_Booking.Curr, dbo.Ls_Partner.s_Name,   
                      dbo.Ls_Partner.NameTax, dbo.Ls_Partner.Address AS PartAddress, dbo.Ls_Partner.AddressTax, dbo.Ls_Partner.TaxNo,   
                      dbo.Ls_Partner.Fax AS PartFax, dbo.Ls_Partner.Email, dbo.Ls_Partner.Phone,dbo.PR_Booking.Adult,dbo.PR_Booking.Child  
FROM         dbo.PR_Booking LEFT OUTER JOIN  
                      dbo.Ls_Partner ON dbo.PR_Booking.Partner_ID = dbo.Ls_Partner.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
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
         Begin Table = "PR_Booking"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 207
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 15
         End
         Begin Table = "Ls_Partner"
            Begin Extent = 
               Top = 9
               Left = 377
               Bottom = 195
               Right = 533
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 36
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
         GroupBy =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Booking';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Booking';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Booking';
