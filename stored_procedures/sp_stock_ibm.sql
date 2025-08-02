CREATE DEFINER=`root`@`localhost` PROCEDURE `dummy`.`sp_stock_ibm`()
begin
	
	delete from stock_ibm_info
	where trade_dt in (
					select trade_dt 
					from st_stock_ibm_info
				);
	
	insert into stock_ibm_info 
	select trade_dt , stock_info 
	from st_stock_ibm_info;
	commit;
end