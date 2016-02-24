BEGIN TRAN

/*
Scripts de monitoração do TEMPDB
*/

dbcc inputbuffer(105)

sig_db.dbo.sig_proc_extracao_emissao_sp;1

EXEC sp_WhoIsActive 105
    @find_block_leaders = 1, 
    @sort_order = '[blocked_session_count] DESC'
 -- processos em execução
 select name,log_reuse_wait , log_reuse_wait_desc  
  from sys.databases where name = 'tempdb'
checkpoint -- flush do log 
sp_helpdb tempdb
select   login_time  from sys.sysprocesses where spid=1 -- informa que horas a instancia foi reiniciada

exec xp_readerrorlog 0,1,'is full',null,null,null,'desc' -- errorlog atual

exec xp_readerrorlog 1,1,'is full',null,null,null,'desc' --errorlog anterior

DBCC SQLPERF('logspace') -- espaço de logs 
dbcc loginfo

SELECT name AS 'File Name' , physical_name AS 'Physical Name', size/128 AS 'Total Size in MB',
 size/128.0  - CAST(FILEPROPERTY(name, 'SpaceUsed') AS int)/128.0 AS 'Available Space In MB', * FROM sys.database_files;




---Monitoring file space used in TempDB:
SELECT  SUM (user_object_reserved_page_count)*8 as usr_obj_kb,
SUM (internal_object_reserved_page_count)*8 as internal_obj_kb,
SUM (version_store_reserved_page_count)*8 as version_store_kb,
SUM (unallocated_extent_page_count)*8 as freespace_kb,
SUM (mixed_extent_page_count)*8 as mixedextent_kb
FROM    sys.dm_db_file_space_usage;

--Historical information about TempDB usage:

SELECT top 5 *
FROM sys.dm_db_task_space_usage
ORDER BY (user_objects_alloc_page_count + internal_objects_alloc_page_count) DESC;

--Determine which queries are using large amounts of TempDB:
SELECT t1.session_id, t1.request_id, t1.task_alloc, t1.task_dealloc, t2.sql_handle, t2.statement_start_offset, t2.statement_end_offset, t2.plan_handle
FROM 
(SELECT session_id, request_id, SUM(internal_objects_alloc_page_count) AS task_alloc, SUM(internal_objects_dealloc_page_count) AS task_dealloc
FROM sys.dm_db_task_space_usage
GROUP BY session_id, request_id) AS t1
JOIN sys.dm_exec_requests AS t2 ON t1.session_id = t2.session_id
AND t1.request_id = t2.request_id
ORDER BY t1.task_alloc DESC;



SELECT
st.dbid AS QueryExecutionContextDBID,
DB_NAME(st.dbid) AS QueryExecContextDBNAME,
st.objectid AS ModuleObjectId,
SUBSTRING(st.TEXT,
dmv_er.statement_start_offset/2 + 1,
(CASE WHEN dmv_er.statement_end_offset = -1
THEN LEN(CONVERT(NVARCHAR(MAX),st.TEXT)) * 2
ELSE dmv_er.statement_end_offset
END - dmv_er.statement_start_offset)/2) AS Query_Text,
dmv_tsu.session_id ,
dmv_tsu.request_id,
dmv_tsu.exec_context_id,
(dmv_tsu.user_objects_alloc_page_count - dmv_tsu.user_objects_dealloc_page_count) AS OutStanding_user_objects_page_counts,
(dmv_tsu.internal_objects_alloc_page_count - dmv_tsu.internal_objects_dealloc_page_count) AS OutStanding_internal_objects_page_counts,
dmv_er.start_time,
dmv_er.command,
dmv_er.open_transaction_count,
dmv_er.percent_complete,
dmv_er.estimated_completion_time,
dmv_er.cpu_time,
dmv_er.total_elapsed_time,
dmv_er.reads,dmv_er.writes,
dmv_er.logical_reads,
dmv_er.granted_query_memory,
dmv_es.HOST_NAME,
dmv_es.login_name,
dmv_es.program_name
FROM sys.dm_db_task_space_usage dmv_tsu
INNER JOIN sys.dm_exec_requests dmv_er
ON (dmv_tsu.session_id = dmv_er.session_id AND dmv_tsu.request_id = dmv_er.request_id)
INNER JOIN sys.dm_exec_sessions dmv_es
ON (dmv_tsu.session_id = dmv_es.session_id)
CROSS APPLY sys.dm_exec_sql_text(dmv_er.sql_handle) st
WHERE (dmv_tsu.internal_objects_alloc_page_count + dmv_tsu.user_objects_alloc_page_count) > 0
ORDER BY (dmv_tsu.user_objects_alloc_page_count - dmv_tsu.user_objects_dealloc_page_count) + (dmv_tsu.internal_objects_alloc_page_count - dmv_tsu.internal_objects_dealloc_page_count) DESC

SELECT top 5 a.session_id, a.transaction_id, a.transaction_sequence_num, a.elapsed_time_seconds,
b.program_name, b.open_tran, b.status
FROM sys.dm_tran_active_snapshot_database_transactions a
join sys.sysprocesses b
on a.session_id = b.spid
ORDER BY elapsed_time_seconds DESC





Declare @tempdbfilecount as int;
select @tempdbfilecount = (select count(*) from sys.master_files where database_id=2 and type=0);
WITH Processor_CTE ([cpu_count], [hyperthread_ratio])
AS
(
      SELECT  cpu_count, hyperthread_ratio
      FROM sys.dm_os_sys_info sysinfo
)
select Processor_CTE.cpu_count as [# of Logical Processors], @tempdbfilecount as [Current_Tempdb_DataFileCount], 
(case 
      when (cpu_count<8 and @tempdbfilecount=cpu_count)  then 'No' 
      when (cpu_count<8 and @tempdbfilecount<>cpu_count and @tempdbfilecount<cpu_count) then 'Yes' 
      when (cpu_count<8 and @tempdbfilecount<>cpu_count and @tempdbfilecount>cpu_count) then 'No'
      when (cpu_count>=8 and @tempdbfilecount=cpu_count)  then 'No (Depends on continued Contention)' 
      when (cpu_count>=8 and @tempdbfilecount<>cpu_count and @tempdbfilecount<cpu_count) then 'Yes'
      when (cpu_count>=8 and @tempdbfilecount<>cpu_count and @tempdbfilecount>cpu_count) then 'No (Depends on continued Contention)'
end) AS [TempDB_DataFileCount_ChangeRequired]
from Processor_CTE;
 



ROLLBACK