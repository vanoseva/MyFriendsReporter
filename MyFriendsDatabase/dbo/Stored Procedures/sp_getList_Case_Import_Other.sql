﻿CREATE  Procedure [dbo].[sp_getList_Case_Import_Other](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)    
as    
 if @caseTime=0    
  Select* from V_Import_Other order by dt_ImportDate  desc    
 else if @caseTime=1    
  Select* from V_Import_Other Where DATEDIFF(day, dt_ImportDate, GETDATE())=0 order by dt_ImportDate  desc    
 else if @caseTime=2    
  Select* from V_Import_Other Where DATEDIFF(day, dt_ImportDate, GETDATE())=1 order by dt_ImportDate  desc    
 else if @caseTime=3    
  Select* from V_Import_Other Where DATEDIFF(week, dt_ImportDate, GETDATE())=0 order by dt_ImportDate  desc    
 else if @caseTime=4    
  Select* from V_Import_Other Where DATEDIFF(week, dt_ImportDate, GETDATE())=1 order by dt_ImportDate  desc    
 else if @caseTime=5    
  Select* from V_Import_Other Where DATEDIFF(month, dt_ImportDate, GETDATE())=0 order by dt_ImportDate  desc    
 else if @caseTime=6    
  Select* from V_Import_Other Where DATEDIFF(month, dt_ImportDate, GETDATE())=1 order by dt_ImportDate  desc    
 else     
  Select *  from V_Import_Other     
                where Datediff(day,dt_ImportDate,@fromDate)<=0 and Datediff(day,dt_ImportDate,@toDate)>=0     
                order by dt_ImportDate desc 