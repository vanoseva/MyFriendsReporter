CREATE  Procedure  [dbo].[sp_getFuncRight](@UID nvarchar(50),@isChild bit,@Opt int)        
as        
 if @Opt=0 --AppOpt=0 phân hệ HMS,=1 phân hệ POS,=2 phân hệ STORE  
 Begin  
  if @isChild=1        
    Select '' as sFunID, f.NameEng, f.s_Name,f.i_ID,f.i_Uplevel,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
    isnull(r.IDSort,0) as IDSort         
    from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
    where isnull(f.i_Uplevel,0)<>0  and f.[b_valid]=1 and isRep=1  
         
  else        
         
   Select '' as sFunID,f.NameEng,f.s_Name,f.i_ID,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
   isnull(r.IDSort,0) as IDSort         
   from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
   where isnull(f.i_Uplevel,0)=0 and f.[b_valid]=1  and isRep=1  
 end  
 else if @opt=1  
 Begin  
  if @isChild=1        
    Select '' as sFunID,f.NameEng, f.s_Name,f.i_ID,f.i_Uplevel,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
    isnull(r.IDSort,0) as IDSort         
    from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
    where isnull(f.i_Uplevel,0)<>0  and f.[b_valid]=1 and isRes=1  
    Union all  
     Select f.s_ID as sFunID,'' as NameEng,f.[Name] +' - '+res.[name] as s_Name,cast(0 as int) as i_ID,cast(-99 as int) i_Uplevel,  
  isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,isnull(r.IDSort,0) as IDSort     
      
  from ls_Cashier f Join ls_restaurant res On f.Restaurant_ID=res.s_ID  
  left outer join (Select * from PR_FunRight_EXT where [UID]=@UID) as r On f.s_ID=r.FuncID         
     
  else        
         
   Select '' as sFunID,f.NameEng,f.s_Name,f.i_ID,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
   isnull(r.IDSort,0) as IDSort         
   from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
   where isnull(f.i_Uplevel,0)=0 and f.[b_valid]=1  and isRes=1  
     Union all  
  Select f.s_ID as sFunID,'' as NameEng,N'Quầy thu' as s_Name,f.i_ID,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
   isnull(r.IDSort,0) as IDSort         
   From (Select cast(-99 as int) as i_ID,'-1' as s_ID ) f left outer join (Select * from PR_FunRight_EXT where [UID]=@UID) as r On f.s_ID=r.FuncID  
  
 end   
 else if @opt=2  
 Begin  
  if @isChild=1        
    Select '' as sFunID,f.NameEng, f.s_Name,f.i_ID,f.i_Uplevel,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
    isnull(r.IDSort,0) as IDSort         
    from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
    where isnull(f.i_Uplevel,0)<>0  and f.[b_valid]=1 and isStore=1  
         
  else        
         
   Select '' as sFunID,f.NameEng,f.s_Name,f.i_ID,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
   isnull(r.IDSort,0) as IDSort         
   from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
   where isnull(f.i_Uplevel,0)=0 and f.[b_valid]=1  and isStore=1  
 end
 else if @opt=3  
 Begin  
  if @isChild=1        
    Select '' as sFunID,f.NameEng, f.s_Name,f.i_ID,f.i_Uplevel,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
    isnull(r.IDSort,0) as IDSort         
    from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
    where isnull(f.i_Uplevel,0)<>0  and f.[b_valid]=1 and isTEL=1  
         
  else        
         
   Select '' as sFunID,f.NameEng,f.s_Name,f.i_ID,isnull(r.U,0) as U,isnull(r.A,0) as A,isnull(r.D,0) as D,isnull(r.R,0) as R,        
   isnull(r.IDSort,0) as IDSort         
   from LS_FUN f left outer join (Select * from PR_FunRight where [UID]=@UID) as r On f.i_ID=r.FuncID         
   where isnull(f.i_Uplevel,0)=0 and f.[b_valid]=1  and isTEL=1  
 end