/* Set database to CJ web system */
	use CJQuickViewPartData
		Go


/* Drop linked server and recreate */	
	sp_dropserver 'cjweb' 
	go

/*	sp_linkedservers */

	sp_addlinkedserver @server = N'cjweb',     /* Linked server name for OPENQUERY */
		@srvproduct = N'', 
		@provider = N'MSDASQL',      
		@datasrc = N'cjweb';             
/* 		@datasrc = N'customer-adsl2';    */         /* DSN as defined on PC/Server */

	Go
        
/* Start getting the data */

	/* Sample OPENQUERY query 
		SELECT * FROM OPENQUERY(cjweb, 'SELECT * FROM operator_file') */
		
 /* Customer File */
      
			delete from dbo.CF_CustF
      
			Insert into					dbo.CF_CustF(account, 
													invoiceaccount, 
													name,
													add1,
													add2,
													add3,
													add4,
													Add5,
													postcode,
													telephone,
													[Fax Number],
													Email,
													Area,
													CustType,
													PartsDisc,
													MachDisc,
													ContractTerms1,
													ContractTerms2,
													ContractTerms3,
													CampaignFlag,
													CreditStatus,
													LegalInd,
													DebtLetterStatus,
													DelvMon,
													DelvTue,
													DelvWed,
													DelvThu,
													DelvFri,
													MailingClassification,
													PowerToolClassification,
													JohnDeereDealer,
													SalesPerson,
													CarriageChargePolicy,
													DespatchInfoEmail1,
													DespatchInfoEmail2,
													VOID,
													StihlDealer,
													ProfessionalOutofArea,
													UsePremiumCarrier,
													UseRoyalMail,
													TargetAMDelivery,
													HondaAutoRegistration,
													IbeaDealer,
													BrillDealer,
													UseEMarketingOnly,
													MowbotDealer,
													mkFlag12,
													MKPostDelvInstruction,
													MKSendOrderConfirmations,
													MKUseDirectAccountNumber,
													GardenCareDealer,
													InvoiceEmailAddress,
													InvoiceDistributionMethod,
													NoEmailReason,
													Currency,
													ApplyVAT)
										
				Select * from openquery(cjweb, 'select 
										account_no as account, 
										case when 
											invoice_account = ''      '' then account_no
											else
											invoice_account
											end as invoiceaccount,
										name as name, 
										address_line1 as add1, 
										address_line2 as add2,	
										address_line3 as add3,	
										address_line4 as add4,
										'' '' as add5,
										address_postcode as postcode,
										telephone_no as telephone,
										fax_number,
										email_address as email,
										'' '' as area,
										'' '' as custType,
										discount_code as partdisc,
										discount_code as machdisc,
										'' '' as contractterms1,
										'' '' as contractterms2,
										'' '' as contractterms3,
										0 as campaignflag,
										case when
											stop_flag = 1 then ''Y''
											else ''N''
											end as creditstatus,
										'' '' as legalind,
										'' '' as debtletterstatus,
										'' '' as delvmon,
										'' '' as delvtue,
										'' '' as delvwed,
										'' '' as delvthu,
										'' '' as delvfri,
										'' '' as mailingclassification,
										'' '' as powertoolclassification,
										'' '' as johndeeredealer,
										'' '' as salesperson,
										'' '' as carriagechargepolicy,
										'' '' as despatchinfoemail1,
										'' '' as despatchinfoemail2,
										'' '' as VOID,
										'' '' as stihldealer,
										'' '' as professionaloutofarea,
										'' '' as usepremiumcarrier,
										'' '' as useroyalmail,
										'' '' as targetamdelivery,
										'' '' as hondaautoregistration,
										'' '' as ibeadealer,
										'' '' as brilldealer,
										'' '' as useemarketingonly,
										'' '' as mowbotdealer,
										'' '' as mkflag12,
										0 as mkpostdelvinstruction,
										0 as mksendorderconfirmations,
										'' '' as mkusedirectaccountnumber,
										0 as gardencaredealer,
										'' '' as invoiceemailaddress,
										'' '' as invoicedistributionmethod,
										'' '' as noemailreason,
										currency_code,
										apply_vat
										
								from customer_master')
								where account >= '  1000' and partdisc in('AD','AG','AH','MM','MG','MC','AB') 
			
		
      
  /* VAT Code File */
      
			/*Has to be maintained manually - dbo.NL_VatRates */

			delete from dbo.NL_VatRates

			insert into dbo.NL_VatRates
				values('1',20)
			insert into dbo.NL_VatRates
				values('2',0)
			insert into dbo.NL_VatRates
				values('3',17.5)
			insert into dbo.NL_VatRates
				values('4',0)
			insert into dbo.NL_VatRates
				values('5',5)
			insert into dbo.NL_VatRates
				values('6',21)
			insert into dbo.NL_VatRates
				values('7',9)
			insert into dbo.NL_VatRates
				values('8',20)
			insert into dbo.NL_VatRates
				values('9',0)
				

  /* Exchange Rate File */
      
			delete from dbo.ExRates
			      
			Insert into					dbo.ExRates(Currency,
													Rate)
										
				Select * from openquery(cjweb, 'select 
												curr_code,
												parts_wsj_rate
												from foreign_currency_file')
			

      /* Stock File */
      
			delete from dbo.BR_ProdF
			      
			Insert into					dbo.BR_ProdF(ProductCode,
													FullDescription,
													ShortDescription,
													BinLocation,
													FreeStock,
													CommittedWebOrderQty,
													LastWebOrder,
													LastUpdated)
										
				Select *, GETDATE() as 'LastUpdate' from openquery(cjweb, 'select
												parts_master.part_number,
												parts_master.part_description,
												parts_master.part_description as DESC2,
												parts_depot.bin_loc,
												parts_depot.qty_on_hand,
												0 as committedweborderqty,
												parts_depot.last_date_sold
												
												from parts_master join parts_depot on 
													parts_master.part_number = parts_depot.part_number 
												where parts_depot.depot_code = ''1''' )
								

      /* Product File */
      
			delete from dbo.CF_ProdF
			      
			Insert into					dbo.CF_ProdF(ProductCode,
													FullDescription,
													ShortDescription,
													SupersededTo,
													PAC,
													RRP,
													Trade1,
													Trade2,
													Trade3,
													Trade4,
													Trade5,
													Trade6,
													Base,
													DiscCode,
													QTYDiscCode,
													VATCode,
													SalesPriceBreak1,
													SalesPriceBreak2,
													SalesPriceBreak3,
													SalesPriceBreak4,
													SalesPriceBreak5,
													SalesPriceBreak6,
													Keyword)
										
select t1.pm_part_number as productcode, 
  max(t1.pm_part_description) as fulldescription, 
  max(t1.pm_part_description2) as shortdescription, 
  max(t1.ps_sup_to) as supersededto, 
  max(case when 
    left(t1.pm_part_number,1) between 'A' and 'Z' then 'A'+LEFT(t1.pm_part_number,2)
   else
    'B'+LEFT(t1.pm_part_number,2)
   end) as PAC,
  max(t1.pm_r_r_price) as RRP,
  max(0) as trade1,
  max(0 )as trade2,
  max(0 )as trade3,
  max(0 )as trade4,
  max(0 )as trade5,
  max(0 )as trade6,
  max(0 )as base,
  max(t1.pm_discount_code) as discode, 
  max('') as qtydisccode,
  max(t1.pm_vat_code) as vatcode,
  max(0) as salespricebreak1,
  max(0) as salespricebreak2,
  max(0) as salespricebreak3,
  max(0) as salespricebreak4,
  max(0) as salespricebreak5,
  max(0) as salespricebreak6,
  max('') as keyword 
  from openquery(cjweb, 
    'select parts_master.part_number as pm_part_number,
    parts_master.part_description as pm_part_description,
    parts_master.part_description as pm_part_description2,
    case when parts_supersessions.part_number is null then
     '' '' else
     parts_supersessions.part_number
     end as ps_sup_to,
    case when parts_supersessions.supp_part_no is null then
     '' '' else
     parts_supersessions.supp_part_no
     end as ps_supp_part_no,
    parts_master.r_r_price as pm_r_r_price,
    concat(substr(parts_master.part_number,1,2), disc_code) as pm_Discount_Code,
    vat_code as pm_vat_code, parts_supersessions.*
   from parts_master 
   left join parts_supersessions on parts_master.part_number = parts_supersessions.supp_part_no') t1   
  
   left join (select supp_part_no, MAX("date") as latestdate 
    from openquery(cjweb, 'select * from parts_supersessions') group by supp_part_no) t2
   on t1.ps_supp_part_no = t2.supp_part_no and t1."date" = t2.latestdate      
   where  (((len(t1.ps_sup_to) > 1 and t2.latestdate is not null))
    or ((LEN(t1.ps_sup_to) = 0 and t2.latestdate is null)))
    group by t1.pm_part_number
   order by t1.pm_part_number               
				
				

      /* Product Kit File */
      
			delete from dbo.AS_KitLines    

			Insert into					dbo.AS_KitLines(
													SequenceNumber,
													kitname,
													[Type],
													partno,
													qty)
										
				Select ROW_NUMBER() OVER( ORDER BY kit_number ) AS 'rownumber', *
						from openquery(cjweb, 'select
												kit_number,
												'' '' as type,
												part_number,
												quantity
												from parts_kit_lines')


      /* Price File (Gold catalogue) */
      
			delete from dbo.CF_Price
			
			Insert into					dbo.CF_Price(
													ProductCode,
													FullDescription,
													ShortDescription,
													PAC,
													VATCode,
													RRP,
													DiscountGroup,
													Keyword)
										
				Select part_number as productcode, 
						[description] as fulldescription,
						[description] as shortdescription,
						case when 
							left(part_number,1) between 'A' and 'Z' then 'A'+LEFT(part_number,2)
							else
							'B'+LEFT(part_number,2)
						end as PAC,
						vat_code as VATcode,
						sell_price as RRP,
						DiscountGroup,
						'' as keyword
				 from openquery(cjweb, 'select
												part_number,
												description,
												vat_code,
												sell_price,
												concat(substr(part_number,1,2),disc_level) as DiscountGroup
												from parts_catalogue_file')
												
									where LEFT(part_number,2) not in ('BM','CA','CL','CT','DP','DP',
																'DW','ET','KV','KW','MF','SR','YB','YM')
												
												
      /* Terms Class Group File (Gold Dist Discount Matric) */
      
			delete from dbo.CF_TermsClassGroup
			
			Insert into					dbo.CF_TermsClassGroup(
													Class,
													Code,
													DiscountCode,
													SupplyType,
													"Description",
													"Type",
													Base,
													Unit,
													Nett,
													Discount1,
													Discount2,
													Display)												
										
				Select * from openquery(cjweb, 'select
												'' '' as class,
												substr(cust_acc,5,2) as Code,
												concat(prefix,disc_code) as DiscountCode,
												''B'' as SupplyType,
												'' '' as Description,
												''V'' as Type,
												''R'' as Base,
												''0'' as Unit,
												0 as Nett,
												disc_perc_1 as Discount1,
												0 as Discount2,
												''D'' as Display
												from prefix_cust_gen_disc 
												where invoice_type = ''@@''')
												
												where code in('AD','AG','AH','MM','MG','MC','AB')


      /* Terms Class Group File (Gold Dist Discount Matrix) */
      
			delete from dbo.CF_TermsClassProduct
			
			Insert into					dbo.CF_TermsClassProduct(
													Class,
													Code,
													SupplyType,
													ProductCode,
													"Type",
													Base,
													Unit,
													Price,
													Discount1,
													Discount2,
													Nett,
													Display)												
										
				Select * from openquery(cjweb, 'select
												'' '' as Class,
												substr(cust_account,5,2) as Code,
												''B'' as SupplyType,
												Part_number as ProductCode,
												''V'' as Type,
												''R'' as Base,
												''EA'' as Unit,
												parts_master.r_r_price as Price,
												0 as Discount1,
												0 as Discount2,
												disc_level_01 as Nett,
												''D'' as Display
												from parts_customer_discounts join 
													parts_master on parts_customer_discounts.part_number
													= parts_master.part_number having price_base = 0')
												
												where code in('AD','AG','AH','MM','MG','MC','AB')
												
								
								
      /* Terms File (Discount Effective Dates) */
      
			delete from dbo.CF_Terms
			
			Insert into					dbo.CF_Terms(
													Class,
													Code,
													Currency,
													"Description",
													EffectiveFrom,
													EffectiveTo												
													)												
										
				Select ' ' as class, 
						code,  
						'' as currency,
						'' as "description",
						convert(datetime, '1980-01-01') as effectivefrom,
						convert(datetime, '2099-12-31') as effectiveto
						
						from openquery(cjweb, 'select
												discount_code as Code
												from customer_master
												group by discount_code')
												
												where code in('AD','AG','AH','MM','MG','MC','AB')
												
