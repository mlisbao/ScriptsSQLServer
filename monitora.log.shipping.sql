BEGIN TRAN


SELECT last_restored_file, * FROM OPENQUERY ([LOCALHOST], 'SET FMTONLY OFF EXEC sys.sp_help_log_shipping_monitor')
WHERE 1=1
-- AND [status]=1
AND database_name='GDS_DB'

SELECT last_restored_date_utc, last_restored_date, last_restored_file, * 
FROM msdb.dbo.log_shipping_monitor_secondary WHERE secondary_database='gds_db'

exec verifica_backup_sps @type = 'F'

SELECT * FROM sys.databases WHERE state_desc <> 'ONLINE'

SELECT * FROM OPENQUERY ([LOCALHOST],'SET FMTONLY OFF EXEC master.dbo.sp_help_log_shipping_monitor')
WHERE [STATUS]=1

SELECT last_restored_file, * FROM OPENQUERY ([LOCALHOST],'SET FMTONLY OFF EXEC master.dbo.sp_help_log_shipping_monitor')
WHERE database_name = 'seguros_temp_db'

SELECT last_restored_date, last_restored_file, last_restored_date_utc, * FROM msdb.dbo.log_shipping_monitor_secondary
WHERE secondary_database = 'sun_db'

/*

-- Copie o last_restored_file, para o standby e renomeie a extensação de "trn" para "TUF"

RESTORE DATABASE [SUN_DB]
WITH STANDBY='\\SISAS015\dumps\log\SUN_DB\sun_db_20140710084206.TUF'

*/







ROLLBACK