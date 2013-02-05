CREATE  Procedure  [dbo].[sp_getInfo_Objects](@s_ID nvarchar(50))    
as    
 Select o.*,r.Room_ID as RoomID from [LS_Objects] o left join ls_Room r on o.Room_ID=r.s_ID where o.s_ID=@s_ID