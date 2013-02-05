Create View V_RegisterOver
as
Select *
from Pr_Register where CheckOut_Date is null
and case when isnull(isRegDay,1)=1 then Datediff( day,to_Date,getdate()) else Datediff( mi,to_Date,getdate()) end >=0