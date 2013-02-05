﻿CREATE VIEW dbo.V_BookingArrange  
AS  
SELECT     dbo.PR_BookingArranged.s_ID AS BKArrange_ID, dbo.V_BookingDetail.toDate, dbo.V_BookingDetail.BK_Date, dbo.V_BookingDetail.FullName,   
                      dbo.V_BookingDetail.Contact, dbo.V_BookingDetail.Company, dbo.V_BookingDetail.Address, dbo.V_BookingDetail.IDSort,   
                      dbo.V_BookingDetail.From_date, dbo.V_BookingDetail.To_date, dbo.V_BookingDetail.bkdetailID, dbo.V_BookingDetail.BK_ID,   
                      dbo.V_BookingDetail.RoomType_ID, dbo.V_BookingDetail.PriceVN, dbo.V_BookingDetail.PriceUS, dbo.V_BookingDetail.Qty,   
                      dbo.V_BookingDetail.RoomTypeName, dbo.V_BookingDetail.RoomType, dbo.PR_BookingArranged.Room_ID, dbo.PR_BookingArranged.isReg,   
                      dbo.Ls_Room.Room_ID AS RoomID,dbo.V_BookingDetail.Number_ID  
FROM         dbo.PR_BookingArranged INNER JOIN  
                      dbo.V_BookingDetail ON dbo.PR_BookingArranged.BKDetail_ID = dbo.V_BookingDetail.bkdetailID LEFT OUTER JOIN  
                      dbo.Ls_Room ON dbo.PR_BookingArranged.Room_ID = dbo.Ls_Room.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[11] 2[20] 3) )"
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
         Begin Table = "PR_BookingArranged"
            Begin Extent = 
               Top = 42
               Left = 242
               Bottom = 150
               Right = 394
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "V_BookingDetail"
            Begin Extent = 
               Top = 43
               Left = 440
               Bottom = 340
               Right = 831
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_Room"
            Begin Extent = 
               Top = 54
               Left = 43
               Bottom = 162
               Right = 195
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_BookingArrange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_BookingArrange';

