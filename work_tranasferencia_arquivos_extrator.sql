USE MASTER
/*
USE master
go
sp_resetstatus 'interface_dados_hist_db'
-- dbcc dbrecover (gds_db)

RESTORE DATABASE interface_dados_hist_db WITH STANDBY='\\sisab503\dumps\log\interface_dados_hist_db\interface_dados_hist_db_20140612131700.tuf'
*/


SELECT ([size]*8192)/1024, db_name(database_id), * FROM sys.master_files where physical_name LIKE 'h:\%' ORDER BY 1 desc

SELECT * FROM sys.dm_tran_database_transactions WHERE database_id = DB_ID('orion_orcamentos')

SELECT DB_NAME(t.database_id), st.transaction_id, st.is_user_transaction, s.blocked, s.hostname, s.cmd, s.program_name, * FROM sys.dm_tran_database_transactions t
INNER JOIN sys.dm_tran_session_transactions st ON t.transaction_id=st.transaction_id
INNER JOIN sys.sysprocesses s ON st.session_id=s.spid
WHERE t.database_id = DB_ID('orion_orcamentos')

SELECT LOGIN_TIME, CMD, HOSTNAME, [PROGRAM_NAME], LOGINAME, * FROM SYS.SYSPROCESSES 
WHERE DBID = DB_ID('vida_web_db') AND SPID IN (SELECT SESSION_ID FROM SYS.DM_EXEC_REQUESTS WHERE STATUS = 'RUNNING')

SELECT db_name(database_id),(size*8)/1024 tamanho, name,PHYSICAL_NAME  FROM SYS.MASTER_FILES 
WHERE 1=1 and database_id > 4
--AND DATABASE_ID = DB_ID('sig_db')
--AND LEFT(PHYSICAL_NAME,1) = 'f'
AND PHYSICAL_NAME like '%mnt\ext_%'
order by tamanho,name asc
--select db

-- de
-- f:\dados\vida_web_dat_dev2.ndf
-- para -- H:\Dados
-- H:\Dados\vida_web_dat_dev2
/*
gds_dat_dev		E:\mnt\ext_data03\Data\gds_dat_dev.mdf -> E:\mnt\AB_EXT_DATA03\DATA 17:51 19:18
gds_log_dev		E:\mnt\ext_log\Log\gds_log_dev.ldf -> E:\mnt\AB_EXT_LOG\Log 5 minutos
gds_idx_dev		E:\mnt\ext_index02\Index\gds_idx_dev.ndf - E:\mnt\AB_EXT_INDEX02\INDEX 17:59 18:22 200gb
gds_dat_dev2	E:\mnt\ext_data01\Data\gds_dat_dev2.ndf 18:25  E:\mnt\AB_EXT_DATA01\Data  314gb
gds_idx_dev2	E:\mnt\ext_index01\Index\gds_idx_dev2.ndf - E:\mnt\AB_EXT_INDEX01\INDEX 30 minutos
gds_dat_dev3	E:\mnt\ext_data04\dados\gds_dat_dev3.ndf - E:\mnt\AB_EXT_DATA04\Data\gds_dat_dev3


SU_PKP1252	E:\mnt\ext_data04\dados\sun_new_dat_dev.mdf -> E:\mnt\AB_EXT_DATA04\Data\sun_new_dat_dev.mdf
SU_PKP1252log	E:\mnt\ext_log\Log\sun_new_log.ldf -> E:\mnt\AB_EXT_LOG\Log\sun_new_log.ldf
Sunsystem_dat_dev2	E:\mnt\ext_data04\dados\sun_new_dat_dev2.ndf -> E:\mnt\AB_EXT_DATA04\Data\sun_new_dat_dev2.ndf

Sunsystem_domain_db	E:\mnt\ext_data01\Data\Sunsystem_domain_dat_dev.mdf -> 
Sunsystem_domain_dblog	E:\mnt\ext_log\Log\Sunsystem_domain_dat_dev.ldf -> 

Sunsystem_gs_db_dat	E:\mnt\ext_data01\Data\Sunsystem_gs_dat_dev.mdf
Sunsystem_gs_db_log	E:\mnt\ext_log\Log\Sunsystem_gs_dat_dev.ldf

itg_modulos_dat_dev	E:\mnt\ext_data04\dados\itg_modulos_dat_dev.mdf
itg_modulos_log	E:\mnt\ext_log\Log\itg_modulos_log_dev.ldf

sispro_dat_dev	E:\mnt\ext_data01\Data\sispro_dat_dev.mdf
sispro_log_dev	E:\mnt\ext_log\Log\sispro_log_dev.ldf

SIS_DES_MDS_Data	E:\mnt\ext_data01\Data\sisprodd_dat_dev.mdf
SIS_DES_MDS_Log	    E:\mnt\ext_log\Log\sisprodd_log_dev.ldf

sig_db	69568	sig_log_dev	E:\mnt\ext_log\Log\sig_log_dev.ldf
sig_db	42777	sig_dat_dev	E:\mnt\ext_data04\dados\sig_dat_dev.mdf


workflow_contratacao_als_idx_dev	=>E:\mnt\ext_index02\Index\workflow_contratacao_als_idx_dev.ndf
workflow_contratacao_als_dat_dev	=>E:\mnt\ext_data01\Data\workflow_contratacao_als_dat_dev.MDF
workflow_contratacao_als_idx_dev3	=>E:\mnt\AB_EXT_INDEX01\INDEX\workflow_contratacao_als_idx_dev3.ndf
workflow_contratacao_als_idx_dev2	=>E:\mnt\ext_index02\Index\workflow_contratacao_als_idx_dev2.ndf
workflow_contratacao_als_dat_dev2	=>E:\mnt\AB_EXT_DATA04\Data\workflow_contratacao_als_dat_dev2.ndf
workflow_contratacao_als_log_dev	=>E:\mnt\ext_log\Log\workflow_contratacao_als_log_dev.LDF
workflow_contratacao_als_dat_dev3	=>E:\mnt\ext_data01\Data\workflow_contratacao_als_dat_dev3.ndf
workflow_contratacao_als_dat_dev8	=>E:\mnt\ext_data01\Data\workflow_contratacao_als_dat_dev8.ndf
workflow_contratacao_als_dat_dev4	=>E:\mnt\ext_data01\Data\workflow_contratacao_als_dat_dev4.ndf
workflow_contratacao_als_dat_dev5	=>E:\mnt\ext_data01\Data\workflow_contratacao_als_dat_dev5.ndf
workflow_contratacao_als_dat_dev6	=>E:\mnt\ext_data01\Data\workflow_contratacao_als_dat_dev6.ndf
workflow_contratacao_als_dat_dev7	=>E:\mnt\ext_data01\Data\workflow_contratacao_als_dat_dev7.ndf

extrator_dat_dev	
extrator_log_dev	

monitor_eventos_log_dev		E:\mnt\ext_log\Log\monitor_eventos_log_dev.ldf
monitor_eventos_dat_dev2	E:\mnt\ext_data03\Data\monitor_eventos_dat_dev2.ndf
monitor_eventos_dat_dev		E:\mnt\ext_data03\Data\monitor_eventos_dat_dev.mdf
monitor_eventos_idx_dev		E:\mnt\ext_index01\Index\monitor_eventos_idx_dev.ndf

als_operacao_db	222923	als_operacao_dat_dev	E:\mnt\ext_data01\Data\als_operacao_dat_dev.mdf
als_operacao_db	47489	als_operacao_idx_dev	E:\mnt\ext_data04\index\als_operacao_idx_dev.ndf
als_operacao_db	12608	als_operacao_log_dev	E:\mnt\ext_log\Log\als_operacao_db_log.ldf

vida_web_db	44864	vida_web_dat_dev	E:\mnt\ext_index02\Data\vida_web_dat_dev.mdf
vida_web_db	27550	vida_web_idx_dev	E:\mnt\ext_index01\Index\vida_web_idx_dev.ndf
vida_web_db	19401	vida_web_dat_dev2	E:\mnt\ext_data04\dados\vida_web_dat_dev2.ndf
vida_web_db	5268	vida_web_log_dev	E:\mnt\ext_log\Log\vida_web_log_dev.ldf
ORION_INDENIZACAO_INTEGRAL	ORION_SALVADOS_DES_Data	E:\Microsoft SQL Server\MSSQL.1\MSSQL\Data\ORION_INDENIZACAO_INTEGRAL.mdf
ORION_ORCAMENTOS	Cesvi_Producao_Data	E:\Microsoft SQL Server\MSSQL.1\MSSQL\Data\ORION_ORCAMENTOS.mdf
*/
--
--ALTER DATABASE [ORION_ORCAMENTOS] SET OFFLINE WITH ROLLBACK IMMEDIATE;
--
/*
ALTER DATABASE ORION_ORCAMENTOS MODIFY FILE (NAME = Cesvi_Producao_Data	, FILENAME = 'G:\Microsoft SQL Server\MSSQL.1\MSSQL\Data\ORION_ORCAMENTOS.mdf');
ALTER DATABASE ReportSQL MODIFY FILE (NAME = ReportSQL_log	, FILENAME = 'F:\MSSQL\Logs\ReportSQL_log.ldf');
ALTER DATABASE vida_web_db MODIFY FILE (NAME = vida_web_dat_dev2	, FILENAME = 'E:\mnt\AB_EXT_DATA04\Data\vida_web_dat_dev2.ndf');
ALTER DATABASE vida_web_db MODIFY FILE (NAME = vida_web_log_dev	, FILENAME = 'E:\mnt\AB_EXT_LOG\Log\vida_web_log_dev.ldf');

ALTER DATABASE ORION_ORCAMENTOS SET ONLINE
ReportSQL
ReportSQL_log




--ALTER DATABASE monitor_eventos_db MODIFY FILE (NAME = monitor_eventos_idx_dev	, FILENAME = 'E:\mnt\AB_EXT_INDEX01\INDEX\monitor_eventos_idx_dev.ndf');

*/
--ALTER DATABASE vida_web_db SET ONLINE

EXEC XP_READERRORLOG 0, 1, NULL, NULL, '2013-03-13', '2013-03-13 23:59', 'DESC'
