CREATE PROC [dbo].[Insert_Update_LS_Currency](@id as nvarchar(50),      
          @idkh as nvarchar(50),      
          @name as nvarchar(255),      
          @exchange as money,      
          @note as nvarchar(500),      
          @isSys as int,      
          @orderno as int,@begin money)      
as       
      
 if exists(select 1 from LS_Currency where i_id=@id)      
 begin      
  update LS_Currency set idkh_s = @idkh,      
        s_name = @name,    
        m_exchange = @exchange,      
        s_note = @note,      
        b_isSys=@isSys,      
        orderno_i = @orderno,m_Begin=@begin      
  where i_id=@id      
 end      
 else      
 begin      
  set @id=newid()      
  insert into LS_Currency(i_id,idkh_s,s_name,m_exchange,s_note,b_isSys,orderno_i,m_Begin)      
  values(@id,@idkh,@name,@exchange,@note,@isSys,@orderno,@begin)      
 end      
 select @id as New_ID