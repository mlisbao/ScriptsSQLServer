BEGIN TRAN


/*
Scripts de monitoração do Database Log
*/
select name,log_reuse_wait , log_reuse_wait_desc   from sys.databases  -- wait de log 
sp_whoisactive -- qual transação 
checkpoint

sp_who2 104

DBCC SQLPERF('logspace') 

/*
ALTER DATABASE aurea_db SET OFFLINE
GO
ALTER DATABASE  aurea_db MODIFY FILE (NAME = aurea_db_log_dev, FILENAME =
'F:\mnt\SPS_023_DATA01\log\aurea_db_log.ldf')
GO

ALTER DATABASE aurea_db SET ONLINE
GO


select * FROM SYS.MASTER_FILES where database_id = db_id('aurea_db') and type_desc = 'LOG'



*/

USE aurea_db
GO


ALTER DATABASE aurea_db
SET RECOVERY SIMPLE;
GO



DBCC SHRINKFILE(aurea_db_log_dev, 1)
BACKUP LOG aurea_db WITH TRUNCATE_ONLY
DBCC SHRINKFILE(aurea_db_log_dev, 1)
GO

SELECT name ,size/128.0 - CAST(FILEPROPERTY(name, 'SpaceUsed') AS int)/128.0 AS AvailableSpaceInMB
FROM sys.database_files;



DBCC LOGINFO('aurea_db')
DBCC SQLPERF(LOGSPACE)
SELECT   d.name,
         MAX(b.backup_finish_date) AS backup_finish_date
FROM     master.sys.sysdatabases d
         LEFT OUTER JOIN msdb..backupset b
         ON       b.database_name = d.name
         AND      b.type          = 'L'
WHERE d.name = 'aurea_db'
GROUP BY d.name
ORDER BY backup_finish_date DESC

DBCC SHRINKFILE (aurea_db_log_dev, 2816);
GO





select @@servername

kill 104 with statusonly

select [Current LSN], Operation, [Lock Information], [Transaction ID], [Description]
from fn_dblog(null, null) 
	where [Lock Information] like N'%SCH%245575913%'
ROLLBACK


select object_id('DS_DFKKOPK')

select [Current LSN], [Operation], [Transaction ID], [Parent Transaction ID],
	[Begin Time], [Transaction Name], [Transaction SID]
select top 10  * from fn_dblog(null, null)
where [Operation] = 'LOP_BEGIN_XACT'



SELECT
    spid
    ,sp.STATUS
    ,loginame   = SUBSTRING(loginame, 1, 12)
    ,hostname   = SUBSTRING(hostname, 1, 12)
    ,blk        = CONVERT(CHAR(3), blocked)
    ,open_tran
    ,dbname     = SUBSTRING(DB_NAME(sp.dbid),1,10)
    ,cmd
    ,waittype
    ,waittime
    ,last_batch
    ,SQLStatement       =
        SUBSTRING
        (
            qt.text,
            er.statement_start_offset/2,
            (CASE WHEN er.statement_end_offset = -1
                THEN LEN(CONVERT(nvarchar(MAX), qt.text)) * 2
                ELSE er.statement_end_offset
                END - er.statement_start_offset)/2
        )
FROM master.dbo.sysprocesses sp
LEFT JOIN sys.dm_exec_requests er
    ON er.session_id = sp.spid
OUTER APPLY sys.dm_exec_sql_text(er.sql_handle) AS qt
WHERE spid IN (SELECT blocked FROM master.dbo.sysprocesses)
AND blocked = 0


select spid,kpid,cmd,waittype,waittime,waitresource,lastwaittype from sys.sysprocesses where cmd = 'KILLED/ROLLBACK'

SELECT spid
,kpid
,login_time
,last_batch
,status
,hostname
,nt_username
,loginame
,hostprocess
,cpu
,memusage
,physical_io
FROM sys.sysprocesses
WHERE cmd = 'KILLED/ROLLBACK'

DBCC INPUTBUFFER(104)





if object_id ('tempdb..#tamanho_espaco_nao_usado') is not null
drop table #tamanho_espaco_nao_usado
;WITH InfoArq AS(
SELECT name
        ,size/128.0 TamanhoArquivoDiscoMB
        ,CAST(FILEPROPERTY(name, 'SpaceUsed') AS int)/128.0 AS EspacoUsadoMB
FROM sys.database_files
)
SELECT
        name
        ,TamanhoArquivoDiscoMB
        ,EspacoUsadoMB
        ,TamanhoArquivoDiscoMB-EspacoUsadoMB as EspacoNaoUsadoMB
                INTO #tamanho_espaco_nao_usado
                           -- select * into util_db..tamanho_espaco_nao_usado_workflow_db_20121209 from #tamanho_espaco_nao_usado
FROM    
        InfoArq 
        
select *, ((EspacoNaoUsadoMB/TamanhoArquivoDiscoMB))*100 From #tamanho_espaco_nao_usado 
where name IN ('DS_BATIMENTO_log')
order by EspaconaoUsadoMB DESC

sp_helpdb tempdb


select * from SYS.MASTER_FILES where database_id = 20
select * from sys.databases

EXEC sp_shrinkfile_parcial 
784892.500000, -- tamanho corrente do datafile em MB
1024, -- tamanho do shrink a cada iteração em MB
307200, -- tamanho mínimo do arquivo em MB
'DS_BATIMENTO_log' -- nome do arquivo lógico
