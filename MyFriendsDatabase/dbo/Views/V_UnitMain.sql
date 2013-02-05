
CREATE View [dbo].[V_UnitMain]  
as    
 Select ls.s_ID as Product_Key,ls.s_Product_ID as Product_ID,ls.s_Name as Product_Name,ls.s_ProductGroupID as Group_ID,ls.s_Unit as Unit,cast(1 as float) as Exchange    
 ,ls.s_Unit as UnitMain  
 from ls_Products ls where  ls.b_Visible=1 