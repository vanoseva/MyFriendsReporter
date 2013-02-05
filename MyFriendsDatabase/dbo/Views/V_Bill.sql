CREATE VIEW dbo.V_Bill    
AS    
SELECT     dbo.PR_ResOrder.s_ID, dbo.PR_ResOrder.Curr, dbo.PR_ResOrder.f_Exchange, dbo.PR_ResOrder.Order_day, dbo.PR_ResOrder.Payment, 
                      dbo.PR_ResOrder.Sub_Total, dbo.PR_ResOrder.RedBill, dbo.PR_ResOrder.isCheckOut, dbo.PR_ResOrder.Inwords, dbo.PR_ResOrder.Register_ID, 
                      dbo.PR_ResOrder.Employee_ID, dbo.PR_ResOrder.IsBills, dbo.PR_ResOrder.Service_ID, dbo.PR_ResOrder.CaLV, dbo.PR_ResOrder.SoHD, 
                      dbo.PR_ResOrder.SoHieuHD, dbo.PR_ResOrder.UCreate, dbo.PR_ResOrder.dtCreate, dbo.PR_ResOrder.dtEdit, dbo.PR_ResOrder.IDSort, dbo.PR_ResOrder.UEdit, 
                      dbo.Ls_PaymentDebt.Name, dbo.PR_ResOrder.Issue_ID, dbo.PR_ResOrder.PPV, dbo.PR_ResOrder.Vat, dbo.V_Register.RoomID, dbo.PR_ResOrder.Note, 
                      dbo.PR_ResOrder.isChangeRoom, dbo.Ls_Issue.s_Name AS NameIssue, dbo.PR_ResOrder.PreOrderID, dbo.PR_ResOrder.TaxTTDB, dbo.PR_ResOrder.TaxOther, 
                      dbo.PR_ResOrder.Sub_TotalVAT, dbo.PR_ResOrder.isTax, dbo.PR_ResOrder.CardID, dbo.PR_ResOrder.CardSerial, dbo.PR_ResOrder.f_Discount, 
                      dbo.PR_ResOrder.m_Discount, ISNULL(obj.s_Name, dbo.PR_ResOrder.Object_Name) AS ObjectName, ISNULL(obj.s_Address, dbo.PR_ResOrder.Address) 
                      AS Address, ISNULL(obj.s_Phone1, dbo.PR_ResOrder.Phone) AS Phone, ISNULL(obj.s_Fax, dbo.PR_ResOrder.Fax) AS Fax, ISNULL(obj.s_TaxNo, 
                      dbo.PR_ResOrder.MsVat) AS MsVAT, ISNULL(obj.Company, dbo.PR_ResOrder.Company) AS Company, dbo.Ls_ServiceType.s_Name
FROM         dbo.PR_ResOrder LEFT OUTER JOIN
                      dbo.Ls_ServiceType ON dbo.PR_ResOrder.Service_ID = dbo.Ls_ServiceType.i_ID LEFT OUTER JOIN
                      dbo.Ls_Issue ON dbo.PR_ResOrder.Issue_ID = dbo.Ls_Issue.s_ID LEFT OUTER JOIN
                      dbo.Ls_PaymentDebt ON dbo.PR_ResOrder.Payment = dbo.Ls_PaymentDebt.i_ID LEFT OUTER JOIN
                      dbo.V_Register ON dbo.V_Register.s_ID = dbo.PR_ResOrder.Register_ID LEFT OUTER JOIN
                      dbo.LS_Objects AS obj ON dbo.V_Register.Object_ID = obj.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[7] 2[20] 3) )"
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
         Begin Table = "PR_ResOrder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 414
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_Issue"
            Begin Extent = 
               Top = 251
               Left = 290
               Bottom = 359
               Right = 442
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_PaymentDebt"
            Begin Extent = 
               Top = 6
               Left = 241
               Bottom = 99
               Right = 393
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V_Register"
            Begin Extent = 
               Top = 0
               Left = 529
               Bottom = 409
               Right = 682
            End
            DisplayFlags = 280
            TopColumn = 17
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 27
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
         Wi', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Bill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'dth = 1500
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Bill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Bill';

