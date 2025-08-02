CREATE DEFINER=`root`@`localhost` PROCEDURE `dummy`.`sp_stock_tsla`()
begin
	delete from stock_tsla_info
	where trade_dt in (
					select trade_dt 
					from st_stock_tsla_info
				);
	
	insert into stock_tsla_info 
	select trade_dt , stock_info 
	from st_stock_tsla_info;
	commit;
	
END