CREATE PROC [dbo].[Insert_Update_LS_PaymentTerm](@id as nvarchar(50),  
          @idkh as nvarchar(50),  
          @name as nvarchar(255),  
          @note as nvarchar(500),  
          @daynum as int,  
          @prepaidDay as int,  
          @orderno as int)  
as   
begin  
 if exists(select 1 from LS_PaymentTerm where s_id=@id)  
 begin  
  update LS_PaymentTerm set idkh_s = @idkh,  
        s_name = @name,  
        s_note = @note,  
        i_daynum=@daynum,  
        i_prepaidDay=@prepaidDay,  
        orderno_i = @orderno  
  where s_id=@id  
 end  
 else  
 begin  
  set @id=newid()  
  insert into LS_PaymentTerm(s_id,idkh_s,s_name,s_note,i_daynum,i_prepaidDay,orderno_i)  
  values(@id,@idkh,@name,@note,@daynum,@prepaidDay,@orderno)  
 end  
select @id as New_ID  
end  
