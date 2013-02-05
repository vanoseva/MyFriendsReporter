Create  Procedure [dbo].[sp_getServiceCode](@GroupID nvarchar(50))  
as  
 Declare @iLen int,@Pos int,@nType int,@Prefix nvarchar(50),@M numeric,@ProductCode nvarchar(50),@s nvarchar(50)  
 set @ProductCode=''  
 Select @iLen=iLen,@Pos=Pos,@nType=nType,@Prefix=Prefix from tblCode where isAuto=1  and ID=3
 if @iLen is null  
 Begin  
  Select @ProductCode as ProductCode  
  return  
 end  
     
 if @nType=0  
  Select @M=isnull(max(cast(SoHD as numeric)),0) +1 from   
              PR_ResOrder where isnumeric(SoHD)=1  
 Else  
  if @Pos=1  
   Select  @M=isnull(max(cast(Right(SoHD,len(SoHD)-len(@Prefix)) as Numeric)),0) +1 from PR_ResOrder  
   where len(SoHD)>len(@Prefix) and   
     left(SoHD,len(@Prefix))=@Prefix and        
     isnumeric(right(SoHD,len(SoHD)-len(@Prefix)))=1  
  Else  
   Select  @M=isnull(max(cast(left(SoHD,len(SoHD) -len(@Prefix)) as numeric)),0)+1 from PR_ResOrder  
   where len(SoHD)>len(@Prefix) and   
     Right(SoHD,len(@Prefix))=@Prefix and  
     isnumeric(left(SoHD,len(SoHD)-len(@Prefix)))=1  
  
 set @s=ltrim(rtrim(str(@M)))  
 while len(@s)<@iLen  
 Begin  
  set @s='0' +@s  
 end  
 if @nType=0  
  set @ProductCode=@s  
 else  
  if @Pos=1  
   set @ProductCode=@Prefix +@s  
  else  
   set @ProductCode=@s +@Prefix   
 Select @ProductCode as ProductCode