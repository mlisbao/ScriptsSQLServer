SELECT plan_handle,usecounts, cacheobjtype, objtype, size_in_bytes, text, query_plan
FROM sys.dm_exec_cached_plans 
CROSS APPLY sys.dm_exec_sql_text(plan_handle) 
CROSS APPLY sys.dm_exec_query_plan(plan_handle)
WHERE usecounts > 1 
AND text LIKE '%SEGS10379_SPS%'
AND objtype = 'Proc'
ORDER BY usecounts DESC;