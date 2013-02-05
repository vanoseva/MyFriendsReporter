Create View V_Registration
as
Select ls.Room_ID as RoomNo, v.s_Object_ID, v.s_Name as ObjectName, ls2.Room_ID as PreRoomNo,
		year(pr.From_date) + '-' + month(pr.From_date) + '-' + day(pr.From_date) as From_dateToDate, 
		year(pr.To_date) + '-' + month(pr.To_date) + '-' + day(pr.To_date) as To_dateToDate, 
		lso.s_ObjectType_ID, lso.s_Name as TypeName, pr.* 
From PR_Register pr left outer join LS_Room ls on pr.Room_ID=ls.s_ID
	left outer join V_FullObjects v on pr.Object_ID=v.s_ID
	left outer join Ls_Room ls2 on pr.PreRoom_ID=ls2.s_ID
	left outer join LS_ObjectType lso on pr.ObjectType_ID=lso.s_ID