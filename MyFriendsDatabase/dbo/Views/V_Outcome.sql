CREATE view [dbo].[V_Outcome]            
as    
select isnull(lse.b_IsActive,0) as IsActive,isnull(lso.s_name,lse.s_name) as Object, ISNULL(lsb.s_Name, N'') AS BankName,      
 CASE WHEN ls.i_PaymentDebt = 0 THEN N'Chi tiền trực tiếp'      
  WHEN ls.i_PaymentDebt = 1 THEN N'Chi từ tiền gối đầu'      
  ELSE N'Chi vào tiền gối đầu' END AS phuongthucCN,      
 ISNULL(lsoi.s_Name,lsoii.s_Name) AS Method,      
 ls.*,lso.s_Object_ID as ObjectID,ISNULL(lsoii.s_Name,lsoi.s_Name) AS MethodGroup       
from ls_outcome ls left outer join         
ls_objects lso on ls.s_object_id=lso.s_id            
 left outer join dbo.LS_Banks AS lsb ON ls.s_Bank_ID = lsb.s_ID              
 left outer join   dbo.LS_OtherOutcome AS lsoi ON ls.i_Item_ID = lsoi.s_ID       
 left outer join   dbo.LS_OtherOutcome AS lsoii ON ls.i_GroupItem_ID = lsoii.s_ID         
left outer join ls_employees lse on ls.s_Object_ID=lse.s_id