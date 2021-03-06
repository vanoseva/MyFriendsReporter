﻿CREATE Procedure [dbo].[sp_getProductCode](@GroupID nvarchar(50))    
as    
 Declare @iLen int,@Pos int,@nType int,@Prefix nvarchar(50),@M numeric,@ProductCode nvarchar(50),@s nvarchar(50)    
 set @ProductCode=''    
 Select @iLen=iLen,@Pos=Pos,@nType=nType,@Prefix=Prefix from tblConfigProductCode where isAuto=1    
 if @iLen is null    
 Begin    
  Select @ProductCode as ProductCode    
  return    
 end    
    if @nType=1    
  set @Prefix=@GroupID     
       
 if @nType=0    
  Select @M=isnull(max(cast(s_Product_ID as numeric)),0) +1 from     
              ls_Products where isnumeric(s_Product_ID)=1    
 Else    
  if @Pos=1    
   Select  @M=isnull(max(cast(Right(s_Product_ID,len(s_Product_ID)-len(@Prefix)) as Numeric)),0) +1 from ls_Products    
   where len(s_Product_ID)>len(@Prefix) and     
     left(s_Product_ID,len(@Prefix))=@Prefix and          
     isnumeric(Right(s_Product_ID,len(s_Product_ID)-len(@Prefix)))=1    
  Else    
   Select  @M=isnull(max(cast(left(s_Product_ID,len(s_Product_ID) -len(@Prefix)) as numeric)),0)+1 from ls_Products    
   where len(s_Product_ID)>len(@Prefix) and     
     Right(s_Product_ID,len(@Prefix))=@Prefix and    
     isnumeric(left(s_Product_ID,len(s_Product_ID)-len(@Prefix)))=1    
    
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