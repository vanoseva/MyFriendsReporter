CREATE VIEW [dbo].[V_rptOutcome]
AS
SELECT     dbo.V_Outcome.Object, dbo.V_Outcome.BankName, dbo.V_Outcome.phuongthucCN, dbo.V_Outcome.Method, dbo.V_Outcome.s_NumberID, 
                      dbo.V_Outcome.dt_DayMonth, dbo.V_Outcome.s_Object_ID, dbo.V_Outcome.i_Item_ID, dbo.V_Outcome.m_Total, dbo.V_Outcome.m_Discount, 
                      dbo.V_Outcome.s_PaymentReason, dbo.V_Outcome.i_PaymentDebt, dbo.V_Outcome.i_Payment, dbo.V_Outcome.s_Bank_ID, 
                      dbo.V_Outcome.b_isCash, dbo.V_Outcome.s_Note, dbo.V_Outcome.i_IDSort, dbo.V_Outcome.s_Word, dbo.V_Outcome.s_Receiver, 
                      dbo.V_Outcome.s_Payer, dbo.V_Outcome.s_ConfirmConsignID, dbo.V_Outcome.s_Creator, dbo.V_Outcome.s_Editor, dbo.V_Outcome.dt_Edit, 
                      dbo.V_Outcome.b_isCashFromImport, dbo.V_Outcome.s_IDDebt, dbo.V_Outcome.m_PrepayNext, dbo.V_Outcome.s_Import_ID, 
                      dbo.V_Outcome.dt_Create, dbo.LS_Objects.s_Name, dbo.LS_Objects.s_Address, dbo.V_FullObjects.s_ID, dbo.V_FullObjects.InDebt, 
                      dbo.V_FullObjects.OutDebt, dbo.PR_OutcomePaymentType.s_Outcome_ID, dbo.PR_OutcomePaymentType.m_Total AS TotalCurrency, 
                      dbo.PR_OutcomePaymentType.i_Currency, dbo.PR_OutcomePaymentType.m_Exchange, dbo.LS_Currency.s_Name AS NameCurrency, 
                      dbo.PR_OutcomePaymentType.s_Note AS NoteCurrency, dbo.V_Outcome.s_ID AS Expr1
FROM         dbo.V_FullObjects RIGHT OUTER JOIN
                      dbo.V_Outcome ON dbo.V_FullObjects.s_ID = dbo.V_Outcome.s_Object_ID LEFT OUTER JOIN
                      dbo.LS_Objects ON dbo.V_Outcome.s_Object_ID = dbo.LS_Objects.s_ID LEFT OUTER JOIN
                      dbo.LS_Currency RIGHT OUTER JOIN
                      dbo.PR_OutcomePaymentType ON dbo.LS_Currency.i_ID = dbo.PR_OutcomePaymentType.i_Currency ON 
                      dbo.V_Outcome.s_ID = dbo.PR_OutcomePaymentType.s_Outcome_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[3] 2[13] 3) )"
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
         Begin Table = "LS_Currency"
            Begin Extent = 
               Top = 275
               Left = 213
               Bottom = 477
               Right = 365
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PR_OutcomePaymentType"
            Begin Extent = 
               Top = 314
               Left = 461
               Bottom = 553
               Right = 762
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V_Outcome"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 308
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V_FullObjects"
            Begin Extent = 
               Top = 9
               Left = 533
               Bottom = 311
               Right = 703
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 13
               Left = 838
               Bottom = 248
               Right = 1008
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
      Begin ColumnWidths = 42
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
         Width = 3045
         Width = 1500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptOutcome';


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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2790
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptOutcome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptOutcome';

