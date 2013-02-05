CREATE Procedure [dbo].[sp_getCodeResOrder](@daymonth as datetime)               
as
 Declare @iLen int,@Pos int,@nType int,@Prefix nvarchar(50),@M numeric,@OrderCode nvarchar(50),@s nvarchar(50),@Format nvarchar(50)                
 set @OrderCode=''
 Select @iLen=cast(s_TypeNumber as int),@Pos=i_PositionPrefix,@nType=nType,@Prefix=s_Prefix,@Format=s_Format from tblConfigNumber where i_TypeNumber=12                
 if @iLen is null
 Begin
  Select @OrderCode as OrderCode
  return
 end

 if @nType=0                 
  Select @M=isnull(max(cast(sophieu as numeric)),0) +1 from v_NumberOrder where isnumeric(sophieu)=1                
 Else
  if @Pos=1
   Select  @M=isnull(max(cast(Right(sophieu,len(sophieu)-(len(@Prefix)+len(@Format))) as numeric)),0)+1 from v_NumberOrder                
   where isnumeric(Right(sophieu,len(sophieu)-len(@Prefix)-len(@Format)+1))=1 and len(sophieu)>len(@Prefix)+len(@Format) and                 
     left(sophieu,len(@Prefix))=@Prefix  AND datediff(day,daymonth,@daymonth)=0

  Else
   Select  @M=isnull(max(cast(Right(sophieu,len(sophieu)-(len(@Prefix)+len(@Format))) as numeric)),0)+1 from v_NumberOrder                
   where isnumeric(left(sophieu,len(sophieu) -len(@Prefix)-len(@Format)+1))=1 and len(sophieu)>len(@Prefix)+len(@Format) and                 
     Right(sophieu,len(@Prefix))=@Prefix  AND datediff(day,daymonth,@daymonth)=0

 set @s=ltrim(rtrim(str(@M)))                
 while len(@s)<@iLen                
 Begin                
  set @s='0' +@s                
 end                
 if @nType=0  
  set @OrderCode=@s  
 else  
  if @Pos=1  
 if @Prefix<>''  
  set @OrderCode=@Prefix + '-' +@s  
 else  
  set @OrderCode=@Prefix +@s  
  else  
 if @Prefix<>''  
  set @OrderCode=@s +'-'+@Prefix  
 else  
  set @OrderCode=@s +@Prefix
 Select @OrderCode as OrderCode