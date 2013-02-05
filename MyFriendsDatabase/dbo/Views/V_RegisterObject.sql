CREATE VIEW V_RegisterObject           
AS              
SELECT  dbo.PR_Register.Group_ID, dbo.PR_Register.BK_ID, dbo.PR_Register.s_ID, dbo.PR_Register.Object_ID, dbo.PR_Register.Room_ID,               
        r.Room_ID as PreRoomID,dbo.PR_Register.PreRoom_ID, ro.fromDate as from_Date, ro.toDate as to_Date, 
		dbo.PR_Register.CheckOut_Date, dbo.PR_Register.Price,               
        dbo.PR_Register.Serv, dbo.PR_Register.Curr, dbo.PR_Register.Discount, dbo.PR_Register.Stat, dbo.PR_Register.Pers, dbo.PR_Register.Price_Extra,               
        dbo.PR_Register.Vat, dbo.PR_Register.Payment, dbo.PR_Register.TravelPermit, dbo.PR_Register.Descr, dbo.PR_Register.CaLV,               
        dbo.PR_Register.PreRegister_ID, dbo.PR_Register.IsRegDay, dbo.PR_Register.DisMoney, dbo.PR_Register.IDSort, dbo.PR_Register.ObjectType_ID,               
        dbo.PR_Register.UCreate, dbo.PR_Register.dtCreate, dbo.PR_Register.UEdit, dbo.PR_Register.dtEdit, dbo.PR_Register.Note,               
        dbo.PR_Register.b_Insert, dbo.LS_Objects.s_Name AS ObjectName, dbo.LS_Objects.s_Object_ID, dbo.Ls_RoomType.RoomType_ID,               
        dbo.Ls_RoomType.s_Name AS Roomtype_Name, dbo.Ls_Room.Room_ID AS RoomID, dbo.PR_RegisterGroup.GroupName,             
  cast(ltrim(rtrim(str(year(ro.fromDate)))) + '-' + ltrim(rtrim(str(month(ro.fromDate)))) + '-' +             
  ltrim(rtrim(str(day(ro.fromDate)))) as smalldatetime) as ArrDate,               
  cast(ltrim(rtrim(str(year(ro.toDate)))) + '-' + ltrim(rtrim(str(month(ro.toDate)))) + '-' +             
  ltrim(rtrim(str(day(ro.toDate)))) as smalldatetime) as DepDate, isnull(dbo.PR_Register.BKArrange_ID,'') as BKArrange_ID            
  ,dbo.PR_Register.CardID,dbo.PR_Register.CardSerial,dbo.PR_Register.Child,dbo.PR_Register.SegmID,dbo.PR_Register.LimitID,dbo.PR_Register.m_Balance      
  ,dbo.Ls_Room.Phone,dbo.Ls_Room.IsTELCKCO,LS_Nationalities.s_Nation_ID,LS_Nationalities.s_Name as Nation_Name,dbo.PR_Register.Partner_ID  
 ,dbo.LS_Objects.Company,dbo.PR_Register.listObjReg           
FROM   dbo.Ls_Room INNER JOIN	              
       dbo.PR_Register ON dbo.Ls_Room.s_ID = dbo.PR_Register.Room_ID INNER JOIN
	   PR_RegisterObject ro ON 	dbo.PR_Register.s_ID=ro.Register_ID JOIN
       dbo.Ls_RoomType ON dbo.Ls_Room.Roomtype_ID = dbo.Ls_RoomType.s_ID left outer join          
       dbo.LS_Objects ON ro.Object_ID = dbo.LS_Objects.s_ID LEFT OUTER JOIN      
       LS_Nationalities ON dbo.LS_Objects.Nation_ID=LS_Nationalities.s_ID LEFT OUTER JOIN    
       dbo.PR_RegisterGroup ON dbo.PR_Register.Group_ID = dbo.PR_RegisterGroup.s_ID    
       LEFT OUTER JOIN dbo.Ls_Room r on dbo.PR_Register.PreRoom_ID=r.s_ID