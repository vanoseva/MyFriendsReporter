CREATE PROC [dbo].[sp_Insert_LS_ImportReturns](      
       @s_ID as nvarchar(50),@s_Import_ID as nvarchar(50),      
       @s_Store_ID as nvarchar(50), @dt_ImportDate as datetime,      
       @s_EmployeeID as nvarchar(50),@s_Object_ID as nvarchar(50),@s_Contact_ID  as nvarchar(50),    
       @m_ImportTotal as money, @s_Note as nvarchar(50),      
       @f_VAT as float, @f_Discount as float, 
       @s_Word as nvarchar(500), @s_InfoProduct as nvarchar(3000),      
       @s_SymbolInvoice as nvarchar(50),@s_Invoice as nvarchar(50),@m_Cost as money,      
       @m_Exchange as money,@OrderID as nvarchar(50),
	   @s_UserCreate as nvarchar(50),@dt_Create as datetime,
	   @s_UserEdit as nvarchar(50),@dt_LastUpdate as datetime)      
as       
begin       
	Insert into [Ls_ImportReturns]([s_ID], [s_Import_ID], [dt_ImportDate], [s_Object_ID], [s_Contact_ID], 
		[s_EmployeeID], [f_VAT], [f_Discount], [m_ImportTotal], [s_Store_ID], [s_Note], [s_InfoProduct], [s_SymbolInvoice], 
		[s_Invoice], [s_Word], [m_Cost], [m_Exchange], [OrderID],[s_UserCreate],[dt_Create],[s_UserEdit],[dt_LastUpdate]) 
	values(@s_ID, @s_Import_ID, @dt_ImportDate, @s_Object_ID, @s_Contact_ID, 
		@s_EmployeeID, @f_VAT, @f_Discount, @m_ImportTotal, @s_Store_ID, @s_Note, @s_InfoProduct, @s_SymbolInvoice,
		@s_Invoice, @s_Word, @m_Cost, @m_Exchange,@OrderID,@s_UserCreate,@dt_Create,@s_UserEdit,@dt_LastUpdate)   
end