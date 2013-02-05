create  Procedure  [dbo].[sp_getIDItem_Employees](@IDSort numeric, @nCase int)
as
	if @nCase=0
		Select s_ID from ls_Employees where i_ordinal=(Select min(i_ordinal) from ls_Employees)
	else
		if @nCase=1
			Select top 1 s_ID,i_ordinal from ls_Employees where i_ordinal<@IDSort order by i_ordinal desc
		else
			if @nCase=2
				Select top 1 s_ID,i_ordinal from ls_Employees where i_ordinal>@IDSort order by i_ordinal asc
			else
				if @nCase=3
					Select s_ID from ls_Employees where i_ordinal=(Select max(i_ordinal) from ls_Employees)
				else
					Select '' as s_ID