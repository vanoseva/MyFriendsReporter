CREATE view rptRoomStatus
as
Select room.*,Repair.FromRepair,Repair.ToRepair,Regis.CheckOut_Date,Arrange.BK_Date
 From 
	--Danh sách Phong theo loai
	(
		Select ro.s_ID as RoomID,ro.Status,ro.Room_ID,ty.s_ID as RoomTypeID,ty.s_Name as RoomType_Name,ty.PriceDay_VND,ty.PriceDay_USD
		from ls_Room ro
		left join ls_RoomType ty on ro.RoomType_ID=ty.s_ID
	) as room
	LEFT JOIN 
	-- Phong bi sua
	(
--		select re.Room_ID,re.fromDate as FromRepair,re.toDate as ToRepair
--		from Pr_roomRepair re
		Select r.Room_ID as RoomID, p.Room_ID
			,p.fromDate as  FromRepair,p.toDate as  ToRepair 
		from Ls_Room r,  Pr_roomRepair p 
		where r.Status=1 and r.s_ID=p.Room_ID
	) as Repair ON room.RoomID=Repair.Room_ID
	LEFT JOIN 
	--Kiem tra phong có check out
	(Select reg.Room_ID,reg.CheckOut_Date
	From V_RegisterReal reg join Ls_Room r ON reg.Room_ID=r.s_ID) AS Regis ON room.RoomID=Regis.Room_ID
	--Kiem tra dat truoc
	LEFT JOIN 
	(
--		Select arr.Room_ID as RoomID,delBok.RoomType_ID,Bok.BK_Date from Pr_BookingArranged arr 
--		inner join Pr_BookingDetail delBok on arr.BKDetail_ID=delBok.s_ID
--		inner join v_BOOKING Bok on delBok.BK_ID=Bok.s_ID
--		where isnull(arr.isReg,0)=0	
	Select arr.Room_ID as RoomID,delBok.RoomType_ID,Bok.BK_Date 
	FROM  V_Booking Bok,Pr_BookingDetail delBok,  Pr_BookingArranged arr,Ls_Room r  
	where Bok.s_ID=delBok.BK_ID and delBok.s_ID=arr.BKDetail_ID and arr.Room_ID=r.s_ID 
) as Arrange ON room.RoomID=Arrange.RoomID 
and room.RoomTypeID=RoomType_ID
