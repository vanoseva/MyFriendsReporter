CREATE  Procedure  [dbo].[sp_getList_ProductGroups]    
as    
 Select cast(0 as bit) as IsSelect,ls.*, lsb.s_Name as BranchName from [LS_ProductGroups] ls Left join      
 LS_BranchProduct lsb ON ls.s_BranchID=lsb.s_ID where is_Valid=1 Order by ls.s_Name asc