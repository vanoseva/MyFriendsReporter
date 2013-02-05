Create  Procedure [dbo].[sp_CheckDuplicate_Quote] (@s_ID nvarchar(50))
as
	SELECT * FROM LS_Quote WHERE s_ID=@s_ID