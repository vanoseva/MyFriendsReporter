CREATE view V_ImportsOther
AS SELECT     s_ID, Shift_ID, UID, dtTimeIn, dtTimeOut, mBalance, mCash, mCard, mTransfer, mDebt, mGotoRep, Curr, Exchange
FROM         dbo.Ls_TotalEndShift
WHERE     (DATEDIFF(day, dtTimeOut, GETDATE()) = 0) AND (Shift_ID IN
                          (SELECT     s_ID
                            FROM  dbo.Ls_Shift
                            WHERE  (DATEDIFF(minute, dt_fromTime, '1900-1-1 ' + CAST(DATEPART(hour, GETDATE()) AS nvarchar(5)) + ':' + CAST(DATEPART(minute, 
                                                   GETDATE()) AS nvarchar(5))) >= 0) AND (DATEDIFF(minute, dt_toTime, '1900-1-1 ' + CAST(DATEPART(hour, GETDATE()) AS nvarchar(5)) 
                                                   + ':' + CAST(DATEPART(minute, GETDATE()) AS nvarchar(5))) <= 0)))
