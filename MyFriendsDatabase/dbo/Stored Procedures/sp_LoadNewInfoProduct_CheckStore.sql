CREATE  Procedure  sp_LoadNewInfoProduct_CheckStore(@ID nvarchar(50),@s_StoreID  nvarchar(50))            
as         
 Declare @DayMonth smalldatetime      
 Select @DayMonth=dt_DayMonth from ls_checkstore Where s_ID=@ID      
       
 Select ls.s_ProductGroupID, ls.s_Product_ID as proID, ls.s_ID as Product_ID,             
  ls.s_Name as Product_Name, isnull(pr.s_IDCheck,'') as s_IDCheck,       
  isnull(sum(ps.Q),0) as f_QtyRecords, isnull(pr.f_Qty,0) as f_Qty,      
  isnull(pr.f_Qty,0) as f_Origin, isnull(pr.s_Unit,ls.s_Unit) as s_Unit,      
  isnull(pr.s_Unit,'-1') as u, isnull(pr.i_IDSort,0) as i_IDSort,            
  isnull(pr.s_Note,'') as s_Note, cast(1 as float) as f_Exchange,  
  cast(isnull(pr.isSelect,0) as bit) as isSelect  
 from ls_Products ls             
	left outer join (Select *, cast(1 as bit) as isSelect from PR_CheckStore   
    where [s_IDCheck]=@ID) AS pr On pr.s_Product_ID=ls.s_ID        
	left outer join (Select ls.s_ID, isnull(sum(v.ExChange*(v.QImport-v.QOrder)),0) as Q       
    from ls_Products ls left join V_Thekho v    
    on ls.s_ID=v.Product_ID and Datediff(day,v.dayMonth,isnull(@DayMonth,getdate()))>=0        
    where v.Store_ID=@s_StoreID   
    Group by ls.s_ID) ps On ps.s_ID=ls.s_ID where ls.b_Visible=1 and ls.b_Menu<>1        
	group by ls.s_ProductGroupID, ls.s_Product_ID, ls.s_ID, ls.s_Name, pr.s_IDCheck,   
	pr.f_Qty, pr.s_Unit, ls.s_Unit, pr.i_IDSort, pr.s_Note, pr.isSelect          
	Order by ls.s_Name asc            
              
 Select pr.* from PR_Product_Units pr where pr.b_DefaultInstock=1                       
 Select u.* from PR_Product_Units u