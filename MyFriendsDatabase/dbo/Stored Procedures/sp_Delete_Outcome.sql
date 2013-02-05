CREATE  Procedure [dbo].[sp_Delete_Outcome] (@s_ID nvarchar(50))          
as          
	Declare @i_PaymentDebt int, @m_Total money, @s_Object_ID nvarchar(50), @i_Item_ID nvarchar(50),           
	@s_Bank_ID nvarchar(50), @m_Bank money, @s_Order_ID nvarchar(50)          
	Select @i_PaymentDebt=i_PaymentDebt, @m_Total=m_Total, @s_Object_ID=ISNULL(s_Object_ID,''),            
		@i_Item_ID=ISNULL(i_Item_ID,''), @s_Bank_ID=ISNULL(s_Bank_ID,'')          
		From LS_Outcome Where s_ID=@s_ID 

	if @i_Item_ID=''--chi cong no  
	       
		 if @i_PaymentDebt=1--chi tu goi dau        
			Update LS_Objects Set m_PrepaySup=m_PrepaySup+@m_Total Where s_ID=@s_Object_ID       
		 else if @i_PaymentDebt=2           
		   Update LS_Objects Set m_PrepaySup=m_PrepaySup-@m_Total Where s_ID=@s_Object_ID  

	Delete from Pr_NumberOutcome_Commission where s_OutcomeID=@s_ID --09.06.09   
	Delete from LS_Outcome where [s_ID]=@s_ID