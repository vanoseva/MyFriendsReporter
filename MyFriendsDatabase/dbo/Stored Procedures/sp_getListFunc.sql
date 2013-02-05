Create  Procedure  [dbo].[sp_getListFunc](@nCase int)
as
	 if @nCase=0
		Select * from LS_FUN Order by i_ID asc
	 else
		if @nCase=1            
               Select * from LS_FUN where isnull(i_Uplevel,0)=0 Order by i_ID asc
            if @nCase=2
               Select * from LS_FUN where isnull(i_Uplevel,0)<>0 Order by i_ID asc
			else
				Select * from LS_FUN Order by i_ID asc