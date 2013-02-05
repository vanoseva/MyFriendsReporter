CREATE PROC [dbo].[Insert_Update_LS_PaymentOrder](@id as nvarchar(50),  
          @idkh as nvarchar(50),  
          @name as nvarchar(255),  
          @note as nvarchar(500),  
          @orderno as int,
			@Customer as bit,
			@Supplier as bit)  
as   
begin  
 if exists(select 1 from LS_PaymentOrder where i_id=@id)  
 begin  
  update LS_PaymentOrder set idkh_s = @idkh,  
        s_name = @name,  
        s_note = @note,  
        orderno_i = @orderno,
		b_Customer=@Customer,
		b_Supplier=@Supplier  
  where i_id=@id  
 end  
 else  
 begin  
  set @id=newid()  
  insert into LS_PaymentOrder(i_id,idkh_s,s_name,s_note,orderno_i,b_Customer,b_Supplier)  
  values(@id,@idkh,@name,@note,@orderno,@Customer,@Supplier)  
 end  
select @id as New_ID  
end  