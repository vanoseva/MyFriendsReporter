CREATE PROC [dbo].[Insert_Update_LS_GroupUser](@id as nvarchar(50),  
          @idkh as nvarchar(50),  
          @name as nvarchar(255),  
          @note as nvarchar(500),  
          @orderno as int)  
as   
begin  
 if exists(select 1 from LS_GroupUser where s_ID=@id)  
 begin  
  update LS_GroupUser set s_Group_ID = @idkh,  
        s_Group_Name = @name,  
        s_note = @note,  
        i_Ordinal = @orderno  
  where s_id=@id  
 end  
 else  
 begin  
  set @id=newid()  
  insert into LS_GroupUser(s_Group_ID,s_Group_Name,s_note,i_Ordinal)  
  values(@idkh,@name,@note,@orderno)  
 end  
select @id as New_ID  
end  