create View V_HisBooking_Booking
as
	select '' as Event_ID,* from Pr_Booking
	Union all
	select * from hisPr_Booking