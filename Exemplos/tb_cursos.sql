create table if not exists tb_cursos(
	 nome varchar(30) not null unique,
     descricao  text,
     carga int unsigned,
     totalaulas int unsigned,
     ano year default '2016'
     )default charset=utf8;

alter table tb_cursos
add idcurso int first;

desc tb_cursos;

alter table tb_cursos
add primary key(idcurso);
