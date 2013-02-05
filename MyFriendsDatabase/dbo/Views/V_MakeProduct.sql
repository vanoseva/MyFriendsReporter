Create View [dbo].[V_MakeProduct]
as
Select pr.s_ID,pr.s_Product_ID,pr.s_Product_ID_1,Qty =case when p.f_TemplNum<>0 then pr.f_Qty/p.f_TemplNum else pr.f_Qty end,
pr.s_Note,pr.i_IDSort from ls_Products p,pr_MakeProduct pr where p.s_ID=pr.s_Product_ID