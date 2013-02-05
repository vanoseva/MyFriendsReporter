CREATE PROC [dbo].[Insert_Update_LS_OtherIncome](@id nvarchar(50) output,      
          @idkh nvarchar(50),      
          @name nvarchar(255),      
          @note  nvarchar(500),      
          @orderno int)      
as       
      
 if (select count(*) from LS_OtherIncome where i_id=@id) >0   
  update LS_OtherIncome set idkh=@idkh,     
        s_name=@name,      
        s_note=@note,      
        orderno_i=@orderno    
    where i_id=@id     
 
 else     

  insert into LS_OtherIncome(i_id,idkh,s_name,s_note,orderno_i)      
  values(@id,@idkh,@name,@note,@orderno)      
  