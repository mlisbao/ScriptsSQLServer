
-- Execute the following statements at the Primary to configure Log Shipping 
-- for the database [SISAB016\ADM].[Sunsystem_domain_db],
-- The script needs to be run at the Primary in the context of the [msdb] database.  
------------------------------------------------------------------------------------- 
-- Adding the Log Shipping configuration 

-- ****** Begin: Script to be run at Primary: [SISAB016\ADM] ******


DECLARE @LS_BackupJobId	AS uniqueidentifier 
DECLARE @LS_PrimaryId	AS uniqueidentifier 
DECLARE @SP_Add_RetCode	As int 


EXEC @SP_Add_RetCode = master.dbo.sp_add_log_shipping_primary_database 
		@database = N'Sunsystem_domain_db' 
		,@backup_directory = N'V:\Dumps\log\Sunsystem_domain_db' 
		,@backup_share = N'\\sisab016\Dumps\log\Sunsystem_domain_db' 
		,@backup_job_name = N'LSBackup_Sunsystem_domain_db' 
		,@backup_retention_period = 1440
		,@monitor_server = N'SISAB016\ADM' 
		,@monitor_server_security_mode = 1 
		,@backup_threshold = 45 
		,@threshold_alert_enabled = 1
		,@history_retention_period = 5760 
		,@backup_job_id = @LS_BackupJobId OUTPUT 
		,@primary_id = @LS_PrimaryId OUTPUT 
		,@overwrite = 1 


IF (@@ERROR = 0 AND @SP_Add_RetCode = 0) 
BEGIN 

DECLARE @LS_BackUpScheduleUID	As uniqueidentifier 
DECLARE @LS_BackUpScheduleID	AS int 


EXEC msdb.dbo.sp_add_schedule 
		@schedule_name =N'LSBackupSchedule_SISAB016\ADM1' 
		,@enabled = 1 
		,@freq_type = 4 
		,@freq_interval = 1 
		,@freq_subday_type = 4 
		,@freq_subday_interval = 15 
		,@freq_recurrence_factor = 0 
		,@active_start_date = 20150703 
		,@active_end_date = 99991231 
		,@active_start_time = 0 
		,@active_end_time = 235900 
		,@schedule_uid = @LS_BackUpScheduleUID OUTPUT 
		,@schedule_id = @LS_BackUpScheduleID OUTPUT 

EXEC msdb.dbo.sp_attach_schedule 
		@job_id = @LS_BackupJobId 
		,@schedule_id = @LS_BackUpScheduleID  

EXEC msdb.dbo.sp_update_job 
		@job_id = @LS_BackupJobId 
		,@enabled = 1 


END 


EXEC master.dbo.sp_add_log_shipping_primary_secondary 
		@primary_database = N'Sunsystem_domain_db' 
		,@secondary_server = N'SISAB015\EXTRATOR' 
		,@secondary_database = N'Sunsystem_domain_db' 
		,@overwrite = 1 

-- ****** End: Script to be run at Primary: [SISAB016\ADM]  ******


-- Execute the following statements at the Secondary to configure Log Shipping 
-- for the database [SISAB015\EXTRATOR].[Sunsystem_domain_db],
-- the script needs to be run at the Secondary in the context of the [msdb] database. 
------------------------------------------------------------------------------------- 
-- Adding the Log Shipping configuration 

-- ****** Begin: Script to be run at Secondary: [SISAB015\EXTRATOR] ******


DECLARE @LS_Secondary__CopyJobId	AS uniqueidentifier 
DECLARE @LS_Secondary__RestoreJobId	AS uniqueidentifier 
DECLARE @LS_Secondary__SecondaryId	AS uniqueidentifier 
DECLARE @LS_Add_RetCode	As int 


EXEC @LS_Add_RetCode = master.dbo.sp_add_log_shipping_secondary_primary 
		@primary_server = N'SISAB016\ADM' 
		,@primary_database = N'Sunsystem_domain_db' 
		,@backup_source_directory = N'\\sisab016\Dumps\log\Sunsystem_domain_db' 
		,@backup_destination_directory = N'\\sisab015\dumps\log\Sunsystem_domain_db' 
		,@copy_job_name = N'LSCopy_SISAB016\ADM_Sunsystem_domain_db' 
		,@restore_job_name = N'LSRestore_SISAB016\ADM_Sunsystem_domain_db' 
		,@file_retention_period = 4320 
		,@monitor_server = N'SISAB016\ADM' 
		,@monitor_server_security_mode = 1 
		,@overwrite = 1 
		,@copy_job_id = @LS_Secondary__CopyJobId OUTPUT 
		,@restore_job_id = @LS_Secondary__RestoreJobId OUTPUT 
		,@secondary_id = @LS_Secondary__SecondaryId OUTPUT 

IF (@@ERROR = 0 AND @LS_Add_RetCode = 0) 
BEGIN 

DECLARE @LS_SecondaryCopyJobScheduleUID	As uniqueidentifier 
DECLARE @LS_SecondaryCopyJobScheduleID	AS int 


EXEC msdb.dbo.sp_add_schedule 
		@schedule_name =N'DefaultCopyJobSchedule' 
		,@enabled = 1 
		,@freq_type = 4 
		,@freq_interval = 1 
		,@freq_subday_type = 4 
		,@freq_subday_interval = 15 
		,@freq_recurrence_factor = 0 
		,@active_start_date = 20150703 
		,@active_end_date = 99991231 
		,@active_start_time = 0 
		,@active_end_time = 235900 
		,@schedule_uid = @LS_SecondaryCopyJobScheduleUID OUTPUT 
		,@schedule_id = @LS_SecondaryCopyJobScheduleID OUTPUT 

EXEC msdb.dbo.sp_attach_schedule 
		@job_id = @LS_Secondary__CopyJobId 
		,@schedule_id = @LS_SecondaryCopyJobScheduleID  

DECLARE @LS_SecondaryRestoreJobScheduleUID	As uniqueidentifier 
DECLARE @LS_SecondaryRestoreJobScheduleID	AS int 


EXEC msdb.dbo.sp_add_schedule 
		@schedule_name =N'DefaultRestoreJobSchedule' 
		,@enabled = 1 
		,@freq_type = 4 
		,@freq_interval = 1 
		,@freq_subday_type = 4 
		,@freq_subday_interval = 15 
		,@freq_recurrence_factor = 0 
		,@active_start_date = 20150703 
		,@active_end_date = 99991231 
		,@active_start_time = 0 
		,@active_end_time = 235900 
		,@schedule_uid = @LS_SecondaryRestoreJobScheduleUID OUTPUT 
		,@schedule_id = @LS_SecondaryRestoreJobScheduleID OUTPUT 

EXEC msdb.dbo.sp_attach_schedule 
		@job_id = @LS_Secondary__RestoreJobId 
		,@schedule_id = @LS_SecondaryRestoreJobScheduleID  


END 


DECLARE @LS_Add_RetCode2	As int 


IF (@@ERROR = 0 AND @LS_Add_RetCode = 0) 
BEGIN 

EXEC @LS_Add_RetCode2 = master.dbo.sp_add_log_shipping_secondary_database 
		@secondary_database = N'Sunsystem_domain_db' 
		,@primary_server = N'SISAB016\ADM' 
		,@primary_database = N'Sunsystem_domain_db' 
		,@restore_delay = 0 
		,@restore_mode = 1 
		,@disconnect_users	= 1 
		,@restore_threshold = 45   
		,@threshold_alert_enabled = 1 
		,@history_retention_period	= 5760 
		,@overwrite = 1 
		,@ignoreremotemonitor = 1 


END 


IF (@@error = 0 AND @LS_Add_RetCode = 0) 
BEGIN 

EXEC msdb.dbo.sp_update_job 
		@job_id = @LS_Secondary__CopyJobId 
		,@enabled = 1 

EXEC msdb.dbo.sp_update_job 
		@job_id = @LS_Secondary__RestoreJobId 
		,@enabled = 1 

END 


-- ****** End: Script to be run at Secondary: [SISAB015\EXTRATOR] ******


-- ****** Begin: Script to be run at Monitor: [SISAB016\ADM] ******


EXEC msdb.dbo.sp_processlogshippingmonitorsecondary 
		@mode = 1 
		,@secondary_server = N'SISAB015\EXTRATOR' 
		,@secondary_database = N'Sunsystem_domain_db' 
		,@secondary_id = N'' 
		,@primary_server = N'SISAB016\ADM' 
		,@primary_database = N'Sunsystem_domain_db' 
		,@restore_threshold = 45   
		,@threshold_alert = 14420 
		,@threshold_alert_enabled = 1 
		,@history_retention_period	= 5760 
		,@monitor_server = N'SISAB016\ADM' 
		,@monitor_server_security_mode = 1 
-- ****** End: Script to be run at Monitor: [SISAB016\ADM] ******


