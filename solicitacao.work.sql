use controle_servico_db
GO

SELECT 
	id_solicitacao, tipo,servidor_destino,base_destino,path,
	ambiente_execucao,status_execucao,dt_solicitacao,
	dt_execucao,autorizada,status,objetivo,log_execucao,
	nome_objeto,username,
	descricao,forma_execucao,sistema
FROM controle_servico_db..solicitacao_tb WHERE id_solicitacao   
in (329043)

\\sisab005\aplicacoes\ordemserviço\upload\banco\arquivos\crrobalo267

select @@trancount


SELECT 
      s.log_execucao,
	  s.id_solicitacao, s.nivel,e.cod_empresa,s.tipo,
	  s.servidor_destino,s.base_destino,s.path, 
      s.ambiente_execucao,s.status_execucao,s.dt_solicitacao, 
      s.dt_execucao,s.autorizada,s.status,s.objetivo, 
      s.nome_objeto,s.username, 
      s.descricao,s.forma_execucao,s.sistema 
FROM 
      controle_servico_db..solicitacao_tb s 
      JOIN controle_servico_db..SOLICITACAO_EMPRESA_TB e 
            ON s.id_solicitacao = e.id_solicitacao 
WHERE 1=1
	--AND s.tipo = 'p'
	AND s.id_solicitacao 
in (324763,322192,322598,321450,322221,323396)   --SEGS09218_SPS
--and s.tipo = 'p'
order by s.id_solicitacao

--select 'existe',create_date from seguros_db.sys.objects where name = 'SEGS11981_SPI' 

select * from controle_servico_db..solicitacao_tb where solicitacao_tb.dt_solicitacao > '2015-05-22'
and solicitacao_tb.servidor_destino like '%SISAB%' and solicitacao_tb.dt_execucao is null
id_solicitacao in(324588)
select * from controle_servico_db..solicitacao_tb where id_solicitacao 
in(315266)

ROLLBACK

BEGIN tran

commit

UPDATE solicitacao_tb
set 
	servidor_destino = 'VBR008002-016\QUALID'
	--base_destino = 'seguros_db',
	--forma_execucao = 'a'
where 
	solicitacao_tb.id_solicitacao IN (
325185,
325186,
325187,
325189,
325190)



select  
	o.nome_objeto, 
	s.id_solicitacao, 
	s.ambiente_execucao, 
	s.dt_execucao, 
	s.status_execucao, 
	s.log_execucao, *  
from
	controle_servico_db..solicitacao_tb s with(nolock) 
inner join 
	controle_servico_db..lista_objetos_sql_tb o with(nolock)  
on  s.id_solicitacao = o.id_solicitacao 
where   
	1=1 
	and tipo = 'p' 
	--and isnull(ambiente_execucao,'q') = 'p' 
	--and dt_execucao is null 
	--and isnull(status,'n') in ('n')     
	--and isnull(autorizada,'n') not in ('r') 
	and o.nome_objeto like '%SMQS00161_SPS%' 
order by s.id_solicitacao desc



select max(id_solicitacao) from controle_servico_db.dbo.solicitacao_tb where tipo = 'v' and ambiente_execucao = 'p'
---update controle_servico_db.dbo.solicitacao_tb SET tipo = 'v' WHERE id_solicitacao = 238486

select * from controle_servico_db.dbo.solicitacao_tb where dt_execucao >= '2012-11-01 17:00:00' and ambiente_execucao = 'p'
and tipo IN ('p','s','v')

SELECT nivel,* FROM controle_servico_db..solicitacao_tb WHERE id_solicitacao IN (226043)


-- voltar status solicitacao
/*
BEGIN TRAN
	UPDATE controle_servico_db..solicitacao_tb SET autorizada = 's',
		status_execucao = null, status = 'n' 
		--, dt_execucao = null 
		WHERE id_solicitacao in (311630)
COMMIT
*/
/*
use controle_servico_db 
go
exec controle_servico_db..retorna_status_sp @id_solicitacao = 322421 
*/
-- alterar nível da solicitação
/*
BEGIN TRAN
	UPDATE controle_servico_db..solicitacao_tb
		SET nivel = 'e'
	WHERE id_solicitacao IN (229832
)
COMMIT TRAN
*/

-- verificar o log da solicitação
SELECT l.id_solicitacao, l.arquivo, s.[path] 
FROM controle_servico_db..log_tb l 
	inner JOIN controle_servico_db..solicitacao_tb s on l.id_solicitacao = s.id_solicitacao
WHERE l.id_solicitacao IN(323760)

select TOP 10 * from controle_servico_db..solicitacao_tb where base_destino = 'pagnet_db' AND ambiente_execucao = 'p' ORDER by dt_execucao desc


-- verificar o ambiente onde a solicitação deve ser executada
SELECT * FROM controle_servico_db..SOLICITACAO_EMPRESA_TB WHERE id_solicitacao = 245897  



-- selecionar o nome e email do usuário solicitante
SELECT 
	segab_usu.nome,
	segab_usu.email,
	segab_usu.ddd,
	segab_usu.telefone
FROM segab_db.dbo.usuario_tb segab_usu
	JOIN controle_servico_db.dbo.usuario_tb ctrl_usu 
		ON segab_usu.nome = ctrl_usu.nome
	JOIN controle_servico_db.dbo.solicitacao_tb ctrl_solicitacao
		ON ctrl_usu.username = ctrl_solicitacao.username
WHERE
	ctrl_solicitacao.id_solicitacao = 277987



-- verificar solicitações em aberto para um determinado objeto
SELECT *
FROM       
  controle_servico_db.dbo.solicitacao_tb s      
 INNER join       
  controle_servico_db.dbo.lista_objetos_sql_tb o      
 ON       
  s.id_solicitacao = o.id_solicitacao      
 WHERE       
  --tipo = 'P'
  --and dt_execucao is null 
  --and status in ('n')      
  --and autorizada not in ('r')
  --and 
  o.nome_objeto like '%SEGS5259_SPI%'
  order by s.dt_execucao DESC
  
  
  SELECT * from ambiente_sistema_tb where banco LIKE 'portal_internet_db%'

-- selecionar os bancos relacionados aos sistemas
SELECT 
	s.*,
	a.*
FROM 
	controle_servico_db.dbo.sistema_tb s INNER JOIN controle_servico_db.dbo.ambiente_sistema_tb a
		ON s.id_sistema = a.sistema_id
WHERE s.nome = '%pl%'
ORDER BY s.nome ASC


/*
BEGIN TRAN
UPDATE controle_servico_db..ambiente_sistema_tb SET servidor_db = 'SISAB051\QUALID'
	WHERE ambiente = 'qualidade' AND sistema_id = 259 AND banco = 'CONTROLE_SERVICO_DB'
COMMIT TRAN
*/


SELECT * FROM controle_servico_db.dbo.autoriza_papel_ind_tb
	WHERE id_sistema IN (174)
	
SELECT * FROM controle_servico_db.dbo.autoriza_papel_ind_tb
	WHERE id_sistema IN (174)

SELECT TOP 1 * FROM controle_servico_db.dbo.papel_tb
SELECT TOP 1 * FROM controle_servico_db.dbo.modulo_tb
SELECT TOP 1 * FROM controle_servico_db.dbo.modulo_papel_tb
SELECT TOP 1 * FROM controle_servico_db.dbo.autoriza_papel_ind_tb

SELECT 
m.id_modulo, m.nome AS nome_modulo
FROM 
controle_servico_db.dbo.modulo_tb m
	INNER JOIN controle_servico_db..modulo_papel_tb mp
		ON m.id_modulo = mp.id_modulo
	INNER JOIN controle_servico_db..autoriza_papel_ind_tb ap
		ON mp.id_papel = ap.id_papel_autorizante
WHERE
	mp.id_sistema IN (174)


SELECT * FROM controle_servico_db.dbo.modulo_conteudo_TB
SELECT * FROM controle_servico_db.dbo.papel_tb
	WHERE id_papel IN (SELECT id_papel FROM controle_servico_db.dbo.autoriza_papel_ind_tb
	WHERE id_sistema IN (174))
	
USE master

SELECT * FROM sys.syscomments WHERE text LIKE '%autorizante_smq%'



SELECT * FROM segab_db.dbo.sistema_tb WHERE sistema_id IN (36,197,243)
SELECT * FROM controle_servico_db..ambiente_sistema_tb WHERE banco LIKE 'controle_ser%'
SELECT * FROM controle_servico_db..sistema_tb WHERE id_sistema in (
156
)

SELECT * FROM controle_servico_db..sistema_tb WHERE nome LIKE '%extrator%'

SELECT * FROM controle_servico_db..ambiente_sistema_tb WHERE banco LIKE 'extrator%'



/*
BEGIN TRAN
UPDATE controle_servico_db..ambiente_sistema_tb
SET servidor_db = 'SISAB015\EXTRATOR',
	dt_alteracao = getdate()
WHERE ambiente = 'producao'
	AND sistema_id = 214
	AND banco = 'extrator_db'
COMMIT TRAN
*/
USE controle_servico_db
SELECT * FROM sys.syscomments WHERE text LIKE '%seguros_hist%'

SELECT * FROM controle_servico_db..solicitacao_tb WHERE base_destino = 'evento_seguros_db'

SELECT * FROM sys.objects WHERE object_id = 2001167041



select * from controle_servico_db..SERVIDOR_ABS_TB 


SELECT * FROM controle_servico_db..solicitacao_tb
WHERE tipo NOT IN ('P','S','V')
	AND dt_solicitacao >= '2012-05-21'
	AND ambiente_execucao = 'P'
ORDER BY dt_execucao DESC


SELECT * FROM controle_servico_db..solicitacao_tb
WHERE dt_solicitacao >= '2012-05-21'
	 AND nivel = 'P'
	 

SELECT id_solicitacao,objetivo,dt_execucao,base_destino,path,* FROM controle_servico_db..solicitacao_tb
WHERE base_destino LIKE '%controle%' AND servidor_destino = 'sisab003'
ORDER BY dt_execucao DESC

SELECT top 10 * FROM controle_servico_db..solicitacao_tb WHERE objetivo LIKE '%SEGS4779_SPD%' aND ambiente_execucao = 'p'
ORDER BY dt_execucao DESC

SELECT top 10 * FROM controle_servico_db..solicitacao_tb WHERE descricao LIKE '%SEGS4779_SPD%' aND ambiente_execucao = 'p'
ORDER BY dt_execucao DESC




SELECT TOP 10 * FROM controle_servico_db..solicitacao_tb WHERE
base_destino LIKE '%extrator_db%' ORDER BY dt_solicitacao DESC

SELECT * FROM controle_servico_db..servidor_tb
SELECT * FROM controle_servico_db..servidor_catalogo_tb
SELECT * FROM controle_servico_db..SERVIDOR_ABS_TB

/*
BEGIN TRAN
INSERT INTO controle_servico_db..SERVIDOR_ABS_TB
        ( servidor_solicitado ,
          servidor_abs ,
          dt_inclusao ,
          usuario 
        )
VALUES  ( 'SISAB015\EXTRATOR' , -- servidor_solicitado - varchar(256)
          'SISAS015\EXTRATOR_ABS' , -- servidor_abs - varchar(256)
          GETDATE() , -- dt_inclusao - UD_dt_inclusao
          'MARMORAES' -- usuario - UD_usuario
        )
COMMIT TRAN
*/


SELECT TOP 5 s.id_solicitacao, s.objetivo, s.dt_solicitacao, s.dt_execucao, l.arquivo
FROM controle_servico_db..solicitacao_tb s
INNER JOIN controle_servico_db..log_tb l
	ON s.id_solicitacao = l.id_solicitacao
WHERE s.ambiente_execucao = 'p'
AND s.tipo = 'p'
AND s.status_execucao = 'e'
ORDER BY s.dt_execucao DESC


---------------------------------------------------------------------------
/*  DESBLOQUEAR OBJETO  */
select      solicitacao_id, *
from  controle_servico_db.dbo.lock_scripts_tb with(nolock)
--WHERE solicitacao_id IN (277987)
where nome_proc like 'SEGS5259_SPI%'
order by lock_scripts_tb.dt_lock DESC

sp_depends lock_scripts_tb
192745

--exec controle_servico_db.dbo.desbloqueio_objeto_spu @p_solicitacao_id = 280505

---------------------------------------------------------------------------

/* OBJETOS BLOQUEADOS */

SELECT
	[Banco] = ls.nome_banco,
	[Procedure] = ls.nome_proc,
	[Data_Checkout] = ls.dt_lock,
	[Data_Checkin] = ls.dt_liberacao
FROM
	usuario_tb u
	inner join lock_scripts_tb ls ON ls.usuario_id = u.usuario_id
WHERE
	ls.dt_lock >= '20150205'
	AND ls.dt_liberacao IS NULL
ORDER BY
	Data_Checkout 


-------------------------------------------------------------------------

use controle_servico_db

select
	id_solicitacao,
	dt_execucao,
	path

from solicitacao_tb where dt_execucao >= '2013-11-22 10:00:00'
and tipo IN ('p','s')
and ambiente_execucao = 'p'




select  distinct 
	o.nome_objeto, s.id_solicitacao, 
	s.ambiente_execucao, s.dt_execucao, 
	s.status_execucao, s.log_execucao, *  
from    controle_servico_db..solicitacao_tb s with(nolock) 
inner   join controle_servico_db..lista_objetos_sql_tb o with(nolock)  
on              s.id_solicitacao = o.id_solicitacao 
where   1=1 
and             tipo = 'p' 
and             isnull(ambiente_execucao,'q') = 'q' 
and             dt_execucao is null 
and             isnull(status,'n') in ('n')     
and             isnull(autorizada,'n') not in ('r') 
and             o.nome_objeto like '%SEGS5259_SPI%' 
order   by s.id_solicitacao desc



