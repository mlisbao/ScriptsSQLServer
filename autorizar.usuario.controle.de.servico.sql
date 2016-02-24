use controle_servico_db
select * from usuario_papel_tb where username = 'rguidastri'

begin tran
insert into usuario_papel_tb (username,id_papel)
select 'rguidastri',id_papel from usuario_papel_tb where username = 'malisbao'
commit