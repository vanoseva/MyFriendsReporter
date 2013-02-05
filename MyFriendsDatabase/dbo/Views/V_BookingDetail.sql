CREATE VIEW dbo.V_BookingDetail  
AS  
SELECT dbo.V_Booking.toDate, dbo.V_Booking.BK_Date, dbo.V_Booking.FullName, dbo.V_Booking.Contact, dbo.V_Booking.Company, dbo.V_Booking.Address,   
                      dbo.V_Booking.IDSort, dbo.V_Booking.From_date, dbo.V_Booking.To_date, dbo.PR_BookingDetail.s_ID AS bkdetailID, dbo.PR_BookingDetail.BK_ID,   
                      dbo.PR_BookingDetail.RoomType_ID, dbo.PR_BookingDetail.PriceVN, dbo.PR_BookingDetail.PriceUS, dbo.PR_BookingDetail.Qty,   
                      dbo.Ls_RoomType.s_Name AS RoomTypeName, dbo.Ls_RoomType.RoomType_ID AS RoomType,dbo.V_Booking.Number_ID 
FROM dbo.Ls_RoomType INNER JOIN  
                      dbo.PR_BookingDetail ON dbo.Ls_RoomType.s_ID = dbo.PR_BookingDetail.RoomType_ID INNER JOIN  
                      dbo.V_Booking ON dbo.PR_BookingDetail.BK_ID = dbo.V_Booking.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[11] 2[19] 3) )"
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
         Begin Table = "Ls_RoomType"
            Begin Extent = 
               Top = 43
               Left = 649
               Bottom = 260
               Right = 802
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PR_BookingDetail"
            Begin Extent = 
               Top = 31
               Left = 271
               Bottom = 195
               Right = 528
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V_Booking"
            Begin Extent = 
               Top = 25
               Left = 26
               Bottom = 246
               Right = 178
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_BookingDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_BookingDetail';

