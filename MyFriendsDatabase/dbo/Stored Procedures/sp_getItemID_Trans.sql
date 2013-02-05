﻿
  CREATE  Procedure [dbo].[sp_getItemID_Trans] (@nCase int,@IDSort numeric)  
as  
 if @nCase=0  
  SELECT s_ID FROM LS_Trans WHERE i_IDSort=(Select min(i_IDSort) from LS_Trans)  
 else if @nCase=1  
  SELECT top 1 s_ID,i_IDSort FROM LS_Trans WHERE i_IDSort<@IDSort order by i_IDSort desc  
 else if @nCase=2  
  SELECT top 1 s_ID,i_IDSort FROM LS_Trans WHERE i_IDSort>@IDSort order by i_IDSort asc  
 else if @nCase=3  
  SELECT s_ID FROM LS_Trans WHERE i_IDSort=(Select max(i_IDSort) from LS_Trans)  
 else if @nCase=4  
  SELECT s_ID FROM LS_Trans WHERE i_IDSort=@IDSort  
 else   
  SELECT  '' as s_ID