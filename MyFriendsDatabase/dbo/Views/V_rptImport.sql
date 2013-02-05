CREATE VIEW [dbo].[V_rptImport]
AS
SELECT     dbo.V_Imports.s_ID, dbo.V_Imports.s_Import_ID, dbo.V_Imports.dt_ImportDate, dbo.V_Imports.s_Object_ID, dbo.V_Imports.s_EmployeeID, 
                      dbo.V_Imports.f_VAT, dbo.V_Imports.f_Discount, dbo.V_Imports.m_ImportTotal, dbo.V_Imports.s_Store_ID, dbo.V_Imports.s_Note, 
                      dbo.V_Imports.s_InfoProduct, dbo.V_Imports.s_Word, dbo.V_Imports.i_IDSort, dbo.V_Imports.s_Purchase_ID, dbo.V_Imports.EmpName, 
                      dbo.V_Imports.ObjName, dbo.V_Imports.PaymentTerm, dbo.V_Imports.s_Order_ID, dbo.V_Imports.StoreName, dbo.V_Imports.b_isDept, 
                      dbo.v_importdetails.Product_IDchar, dbo.v_importdetails.Product_Name, dbo.v_importdetails.f_Quantity, dbo.v_importdetails.m_Price, 
                      dbo.v_importdetails.s_Store_ID AS Expr1, dbo.v_importdetails.s_Unit, dbo.v_importdetails.s_Import_ID AS Expr2, dbo.v_importdetails.s_Product_ID, 
                      dbo.v_importdetails.f_Convert, dbo.v_importdetails.f_QuantityOrder, dbo.v_importdetails.i_IDsort AS Expr3, dbo.v_importdetails.m_PriceUSD, 
                      dbo.v_importdetails.dt_OverDate, dbo.v_importdetails.s_Note AS Expr5, dbo.v_importdetails.m_Total, dbo.v_importdetails.m_OriPrice, 
                      dbo.V_Imports.s_Address, dbo.V_Imports.s_TaxNo, dbo.V_Imports.s_Phone1, dbo.V_Imports.m_Cash, dbo.V_Imports.b_isCash, 
                      dbo.V_Imports.m_Discount AS Giamgia, dbo.V_Imports.Expr1 AS Address_Store, dbo.v_importdetails.f_Discount AS ckhh, 
                      dbo.v_importdetails.m_Discount
FROM         dbo.v_importdetails RIGHT OUTER JOIN
                      dbo.V_Imports ON dbo.v_importdetails.s_Import_ID = dbo.V_Imports.s_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[4] 2[25] 3) )"
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
         Left = -338
      End
      Begin Tables = 
         Begin Table = "v_importdetails"
            Begin Extent = 
               Top = 32
               Left = 654
               Bottom = 332
               Right = 815
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "V_Imports"
            Begin Extent = 
               Top = 28
               Left = 329
               Bottom = 293
               Right = 490
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
      Begin ColumnWidths = 58
         Width = 284
         Width = 3990
         Width = 7455
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
         Width = 2580
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
         Width = 1500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptImport';


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
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptImport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_rptImport';

