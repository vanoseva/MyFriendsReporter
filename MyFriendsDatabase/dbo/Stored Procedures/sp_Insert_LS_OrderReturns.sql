CREATE PROC [dbo].[sp_Insert_LS_OrderReturns](    
       @s_ID as nvarchar(50),@s_Order_ID as nvarchar(50),    
       @s_Store_ID as nvarchar(50), @dt_OrderDate as datetime,    
       @s_EmployeeID as nvarchar(50),@s_Object_ID as nvarchar(50),    
       @m_Ordertotal as money, @s_Note as nvarchar(50),    
       @i_VAT as int, @f_Discount as float,@f_Per as float,    
       @s_Word as nvarchar(500), @s_GroupProduct as nvarchar(3000),    
       @s_FullOrderDate as nvarchar(50), @s_SymbolInvoice as nvarchar(50),    
       @s_Invoice as nvarchar(50), @m_Exchange as money,@ImportID as nvarchar(50),
	   @s_UserCreate as nvarchar(50),@dt_Create as datetime,
	   @s_UserEdit as nvarchar(50),@dt_LastUpdate as datetime)    
as     
begin     
  Insert into [LS_OrderReturns]([s_ID], [s_Order_ID], [s_Store_ID], [dt_OrderDate], [s_EmployeeID],    
   [s_Object_ID], [m_Ordertotal], [s_Note], [i_VAT], [f_Discount],[f_Per],     
   [s_Word], [s_GroupProduct], [s_FullOrderDate], [s_SymbolInvoice], [s_Invoice], [m_Exchange],[ImportID],
   [s_UserCreate],[dt_Create],[s_UserEdit],[dt_LastUpdate])     
  values(@s_ID, @s_Order_ID, @s_Store_ID, @dt_OrderDate, @s_EmployeeID,    
    @s_Object_ID, @m_Ordertotal, @s_Note, @i_VAT, @f_Discount, @f_Per,     
    @s_Word, @s_GroupProduct, @s_FullOrderDate, @s_SymbolInvoice, @s_Invoice, @m_Exchange,@ImportID,
	@s_UserCreate,@dt_Create,@s_UserEdit,@dt_LastUpdate)    
end