USE [master]
RESTORE DATABASE [sisprodd_abs] FROM 
 DISK = N'V:\Backup_Sispro_030615\sisprodd_ABS_FULL_20150603.BAK' 
 WITH  FILE = 1,  
 MOVE N'SIS_DES_MDS_Data'  TO N'V:\mnt\ADM_data\dados\sisprodd_dat_dev_abs.mdf', 
  MOVE N'SIS_DES_MDS_Log' TO N'V:\mnt\ADM_data\log\sisprodd_log_dev_abs.ldf',  
  NOUNLOAD,  STATS = 5
GO


RESTORE FILELISTONLY 
FROM DISK = N'V:\Backup_Sispro_030615\sisprodd_ABS_FULL_20150603.BAK' 

