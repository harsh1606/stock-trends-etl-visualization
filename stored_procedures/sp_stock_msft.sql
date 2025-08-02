CREATE DEFINER=`root`@`localhost` PROCEDURE `dummy`.`sp_stock_msft`()
begin
	delete from stock_msft_info
	where trade_dt in (
					select trade_dt 
					from st_stock_msft_info
				);
	
	insert into stock_msft_info 
	select trade_dt , stock_info 
	from st_stock_msft_info;
	commit;
END