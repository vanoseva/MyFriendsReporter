-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ReportDebtOverview
	@FromDate DateTime,
	@ToDate DateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select 
		ls_obj.s_Name Name,
		x.total Total
	from 
		LS_Objects ls_obj,
		(select ObjectID id, sum(MDebt) total from LS_ResOrder where MDebt != 0 AND (dtCreate BETWEEN @FromDate AND @ToDate) group by ObjectID) x
	where
		ls_obj.s_ID = x.id
		AND ls_obj.b_Customer = 1

END
