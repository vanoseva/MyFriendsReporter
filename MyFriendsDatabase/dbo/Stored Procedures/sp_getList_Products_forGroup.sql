CREATE  Procedure  [dbo].[sp_getList_Products_forGroup](@s_ProductGroupID nvarchar(50))    
as    
if @s_ProductGroupID <> '0'  
 Select * from [LS_Products] where s_ProductGroupID=@s_ProductGroupID AND (isnull(b_isEndProduct,0)=1 or isnull(b_Menu,0)=1) Order by s_Name asc  
else  
 select * from [LS_Products] Where isnull(b_isEndProduct,0)=1 or isnull(b_Menu,0)=1 Order by s_Name asc