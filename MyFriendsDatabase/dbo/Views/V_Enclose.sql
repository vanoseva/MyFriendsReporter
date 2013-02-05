CREATE VIEW [dbo].[V_Enclose]
AS
SELECT     CAST(1 AS int) AS i_Case, dbo.LS_Discount_Product.s_ID, dbo.LS_Discount_Product.s_Name, dbo.LS_Discount_Product.d_FromDate, 
                      dbo.LS_Discount_Product.d_ToDate, dbo.LS_Discount_Product.b_Valid, dbo.PR_Discount_ProductDetail.s_Product_ID, 
                      dbo.PR_Discount_ProductDetail.f_Quantity, dbo.PR_Discount_ProductDetail_Enclose.s_EncloseProduct_ID, 
                      dbo.PR_Discount_ProductDetail_Enclose.f_EncloseQuantity
FROM         dbo.LS_Discount_Product INNER JOIN
                      dbo.PR_Discount_ProductDetail ON dbo.LS_Discount_Product.s_ID = dbo.PR_Discount_ProductDetail.s_Discount_ID INNER JOIN
                      dbo.PR_Discount_ProductDetail_Enclose ON 
                      dbo.PR_Discount_ProductDetail.s_ID = dbo.PR_Discount_ProductDetail_Enclose.s_DiscountDetail_ID
UNION ALL
SELECT     CAST(2 AS int) AS i_Case, LS_Discount_Product_1.s_ID, LS_Discount_Product_1.s_Name, LS_Discount_Product_1.d_FromDate, 
                      LS_Discount_Product_1.d_ToDate, LS_Discount_Product_1.b_Valid, PR_Discount_ProductDetail_1.s_Product_ID, 
                      PR_Discount_ProductDetail_1.f_Quantity, PR_Discount_ProductDetail_1.s_Product_ID AS s_EncloseProduct_ID, 
                      PR_Discount_ProductDetail_1.f_PromotionalQuantity AS f_EncloseQuantity
FROM         dbo.LS_Discount_Product AS LS_Discount_Product_1 INNER JOIN
                      dbo.PR_Discount_ProductDetail AS PR_Discount_ProductDetail_1 ON 
                      LS_Discount_Product_1.s_ID = PR_Discount_ProductDetail_1.s_Discount_ID
WHERE     (PR_Discount_ProductDetail_1.f_PromotionalQuantity <> 0)

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
         Configuration = "(H (4[30] 2[40] 3) )"
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
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
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
         Width = 1935
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Enclose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Enclose';

