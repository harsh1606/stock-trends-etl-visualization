CREATE DEFINER=`root`@`localhost` PROCEDURE `dummy`.`sp_stock_amzn`()
begin
	
	delete from stock_amzn_info
	where trade_dt in (
					select trade_dt 
					from st_stock_amzn_info
				);
	
	insert into stock_amzn_info 
	select trade_dt , stock_info 
	from st_stock_amzn_info;
	commit;
	
END