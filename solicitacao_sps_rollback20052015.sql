USE [controle_servico_db]
GO
/****** Object:  StoredProcedure [dbo].[solicitacao_sps]    Script Date: 26/05/2015 13:36:10 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO





/****** Object:  Stored Procedure dbo.solicitacao_sps    Script Date: 11/6/2001 13:59:35 ******/
ALTER    proc [dbo].[solicitacao_sps]
		@id_solicitacao int
as

	SELECT [id_solicitacao], [objetivo], [dt_solicitacao], [dt_execucao], [log_execucao], [dt_agendamento], [tempo_execucao], [nome_objeto], [servidor_destino], [base_destino], [autorizada], [status], [nivel], [username], [tipo], [descricao], [forma_execucao], [arquivo], [path], [resultado_query], [ambiente_execucao], [path_vss], 
		[observacao] = CASE 
				   WHEN	[observacao] = '' THEN [log_execucao]
				   WHEN	[observacao] IS NULL THEN [log_execucao]
				   ELSE [observacao]					
				END, 
		[status_execucao], [sistema], [versao_vb], [path_erwin], [path_doc], [log_compilador], [enviado_email], [arquivo_copiado], [executando], [sas_id] 
	FROM [controle_servico_db].[dbo].[solicitacao_tb]
	WHERE id_solicitacao = @id_solicitacao



