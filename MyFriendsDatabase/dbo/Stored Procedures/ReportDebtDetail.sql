-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ReportDebtDetail
	@FromDate DateTime,
	@ToDate DateTime,
	@CustomerID NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select 
		rod.Product_Name ProductName,
		rod.Qty Quantity,
		rod.Unit Unit,
		rod.Price UnitPrice,
		rod.Price Price,
		rod.m_DiscountNumber Discount,
		rod.SubTotalNoneDisNumber TotalPrice,
		rod.OrderID OrderID,
		rod.dtOrderTime OrderTime
	from 
		LS_ResOrder ro, 
		PR_ResOrderDetail_NH rod
	where
		ro.s_ID = rod.OrderID
		AND ro.ObjectID = @CustomerID
		AND (ro.dtCreate BETWEEN @FromDate AND @ToDate);
END
