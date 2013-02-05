create view [dbo].[V_Work4Day]
as
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,1 as i_Day, D1 as V from pr_workers where isnull(D1,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,2 as i_Day, D2 as V from pr_workers where isnull(D2,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,3 as i_Day, D3 as V from pr_workers where isnull(D3,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,4 as i_Day, D4 as V from pr_workers where isnull(D4,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,5 as i_Day, D5 as V from pr_workers where isnull(D5,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,6 as i_Day, D6 as V from pr_workers where isnull(D6,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,7 as i_Day, D7 as V from pr_workers where isnull(D7,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,8 as i_Day, D8 as V from pr_workers where isnull(D8,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,9 as i_Day, D9 as V from pr_workers where isnull(D9,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,10 as i_Day, D10 as V from pr_workers where isnull(D10,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,11 as i_Day, D11 as V from pr_workers where isnull(D11,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,12 as i_Day, D12 as V from pr_workers where isnull(D12,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,13 as i_Day, D13 as V from pr_workers where isnull(D13,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,14 as i_Day, D14 as V from pr_workers where isnull(D14,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,15 as i_Day, D15 as V from pr_workers where isnull(D15,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,16 as i_Day, D16 as V from pr_workers where isnull(D16,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,17 as i_Day, D17 as V from pr_workers where isnull(D17,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,18 as i_Day, D18 as V from pr_workers where isnull(D18,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,19 as i_Day, D19 as V from pr_workers where isnull(D19,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,20 as i_Day, D20 as V from pr_workers where isnull(D20,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,21 as i_Day, D21 as V from pr_workers where isnull(D21,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,22 as i_Day, D22 as V from pr_workers where isnull(D22,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,23 as i_Day, D23 as V from pr_workers where isnull(D23,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,24 as i_Day, D24 as V from pr_workers where isnull(D24,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,25 as i_Day, D25 as V from pr_workers where isnull(D25,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,26 as i_Day, D26 as V from pr_workers where isnull(D26,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,27 as i_Day, D27 as V from pr_workers where isnull(D27,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,28 as i_Day, D28 as V from pr_workers where isnull(D28,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,29 as i_Day, D29 as V from pr_workers where isnull(D29,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,30 as i_Day, D30 as V from pr_workers where isnull(D30,'')<>''
Union all
Select s_ID,s_Employee_ID,i_Year,i_Month,s_Shift_ID,s_Note,31 as i_Day, D31 as V from pr_workers where isnull(D31,'')<>''